-- Copyright (C) 2018,2019 Tomoyuki Fujimori <moyu@dromozoa.com>
--
-- This file is part of dromozoa-calendar.
--
-- dromozoa-calendar is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- dromozoa-calendar is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with dromozoa-calendar.  If not, see <http://www.gnu.org/licenses/>.

local calendar = require "dromozoa.calendar"

local name_map = {
  ["元日"] = true;
  ["成人の日"] = true;
  ["建国記念の日"] = true;
  ["春分の日"] = true;
  ["昭和の日"] = true;
  ["憲法記念日"] = true;
  ["みどりの日"] = true;
  ["こどもの日"] = true;
  ["海の日"] = true;
  ["山の日"] = true;
  ["敬老の日"] = true;
  ["秋分の日"] = true;
  ["体育の日"] = true;
  ["文化の日"] = true;
  ["勤労感謝の日"] = true;
  ["天皇誕生日"] = true;

  ["休日（祝日扱い）"] = true;
  ["スポーツの日"] = true;
}

local jdn_map = {}

local function read_csv(file, ignore)
  local handle = assert(io.popen("iconv -f CP932 <'" ..file .. "'"))
  local i = 0
  for line in handle:lines() do
    i = i + 1
    line = line:gsub("\r$", "")
    if i == 1 then
      assert(line == "国民の祝日月日,国民の祝日名称" or line == "国民の祝日・休日月日,国民の祝日・休日名称")
    else
      local year, month, day, name = line:match "^(%d%d%d%d)%-(%d%d)%-(%d%d),([^,]+)$"
      if not year then
        year, month, day, name = assert(line:match "^(%d%d%d%d)/(%d%d?)/(%d%d?),([^,]+)$")
      end
      year = assert(tonumber(year, 10))
      month = assert(tonumber(month, 10))
      day = assert(tonumber(day, 10))
      assert(1 <= month and month <= 12)
      assert(1 <= day and day <= 31)
      if not ignore[year] then
        local jdn = calendar.date_to_jdn(year, month, day)
        local item = jdn_map[jdn]
        if item then
          assert(item == name)
        else
          jdn_map[jdn] = name
        end
      end
    end
  end
  handle:close()
end

read_csv("docs/cao.go.jp/syukujitsu-2016-2018.csv", {})
read_csv("docs/cao.go.jp/syukujitsu-2017-2019.csv", { [2019] = true })
read_csv("docs/cao.go.jp/syukujitsu-2019-2020.csv", {})

local handle = assert(io.popen "cat docs/cybozu.co.jp/*.csv | iconv -f CP932")
for line in handle:lines() do
  line = line:gsub("\r$", "")
  line = line:gsub("^\"(%d+/%d+/%d+)\t*\",", "%1,")
  local year, month, day, name = assert(line:match "^(%d%d%d%d)/(%d%d?)/(%d%d?),([^.]+)$")
  year = assert(tonumber(year, 10))
  month = assert(tonumber(month, 10))
  day = assert(tonumber(day, 10))
  local jdn = calendar.date_to_jdn(year, month, day)
  local item = jdn_map[jdn]
  if item then
    if item == "休日" then
      assert(name == "振替休日" or name == "国民の休日")
      jdn_map[jdn] = name
    elseif item == "休日（祝日扱い）" then
      assert(name:find "^即位")
    elseif item == "体育の日（スポーツの日）" then
      assert(name == "体育の日")
      jdn_map[jdn] = name
    else
      assert(item == name, ("%04d-%02d-%02d %s / %s"):format(year, month, day, item, name))
    end
  else
    if name:find "休日$" then
      assert(name == "振替休日" or name == "国民の休日")
    end
    jdn_map[jdn] = name
  end
end

local min_year
local max_year

for jdn, name in pairs(jdn_map) do
  local year = calendar.jdn_to_date(jdn)
  if not min_year or min_year > year then
    min_year = year
  end
  if not max_year or max_year < year then
    max_year = year
  end
end

local function is_holiday(jdn)
  local name = jdn_map[jdn]
  return name and not name:find "休日$"
end

local min_jdn = calendar.date_to_jdn(min_year,  1,  1)
local max_jdn = calendar.date_to_jdn(max_year, 12, 31)
for jdn = min_jdn, max_jdn do
  local year, month, day, wday = calendar.jdn_to_date(jdn)
  if is_holiday(jdn) and wday == 0 then
    local next_jdn = jdn + 1
    while true do
      if not is_holiday(next_jdn) then
        local name = jdn_map[next_jdn]
        if name then
          assert(name == "振替休日")
        else
          jdn_map[next_jdn] = "振替休日"
        end
        break
      end
      next_jdn = next_jdn + 1
    end
  end
end
for jdn = min_jdn, max_jdn do
  local prev_jdn = jdn - 1
  local next_jdn = jdn + 1
  if is_holiday(prev_jdn) and is_holiday(next_jdn) and not is_holiday(jdn) then
    local name = jdn_map[jdn]
    if name then
      assert(name == "国民の休日")
    else
      jdn_map[jdn] = "国民の休日"
    end
  end
end
for jdn = min_jdn, max_jdn do
  if is_holiday(jdn) then
    local name = jdn_map[jdn]
    assert(name_map[name], name)
  end
end

local data = {}
for jdn = min_jdn, max_jdn do
  local name = jdn_map[jdn]
  if name then
    local year, month, day = calendar.jdn_to_date(jdn)
    local kind
    if name:find "休日$" then
      kind = "休日"
    else
      kind = "祝日"
    end
    data[#data + 1] = {
      year = year;
      month = month;
      day = day;
      kind = kind;
      name = name;
    }
  end
end

local filename = "dromozoa/calendar/holidays.lua"
local out = assert(io.open(filename, "w"))
out:write [[
local data = {
]]

for i = 1, #data do
  local item = data[i]
  out:write(([[
  { year = %4d, month = %2d, day = %2d, kind = "%s", name = "%s" };
]]):format(item.year, item.month, item.day, item.kind, item.name))
end

out:write [[
}

local tree = {
]]

for year = min_year, max_year do
  out:write(([[
  [%4d] = { {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {} };
]]):format(year))
end

out:write [[
}
]]

for i = 1, #data do
  local item = data[i]
  out:write(([[
tree[%4d][%2d][%2d] = data[%3d]
]]):format(item.year, item.month, item.day, i))
end

out:write(([[

return {
  min_year = %4d;
  max_year = %4d;
  data = data;
  tree = tree;
}
]]):format(min_year, max_year))

out:close()

local filename = "docs/holidays.json"
local out = assert(io.open(filename, "w"))
out:write(([[
{
  "min_year": %4d,
  "max_year": %4d,
  "data": [
]]):format(min_year, max_year))

for i = 1, #data do
  local item = data[i]
  local comma = ","
  if i == #data then
    comma = ""
  end
  out:write(([[
    { "year": %4d, "month": %2d, "day": %2d, "kind": "%s", "name": "%s" }%s
]]):format(item.year, item.month, item.day, item.kind, item.name, comma))
end

out:write [[
  ]
}
]]

out:close()
