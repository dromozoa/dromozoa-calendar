-- Copyright (C) 2018 Tomoyuki Fujimori <moyu@dromozoa.com>
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
}

local jdn_map = {}

local handle = assert(io.popen("cat docs/cao.go.jp/*.csv | iconv -f CP932"))
for line in handle:lines() do
  line = line:gsub("\r$", "")
  if line ~= "国民の祝日月日,国民の祝日名称" then
    local year, month, day, name = assert(line:match "^(%d%d%d%d)%-(%d%d)%-(%d%d),([^,]+)$")
    year = assert(tonumber(year, 10))
    month = assert(tonumber(month, 10))
    day = assert(tonumber(day, 10))
    local jdn = calendar.date_to_jdn(year, month, day)
    local item = jdn_map[jdn]
    if item then
      assert(item == name)
    else
      jdn_map[jdn] = name
    end
  end
end
handle:close()

local handle = assert(io.popen("cat docs/cybozu.co.jp/*.csv | iconv -f CP932"))
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
    assert(item == name)
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
    assert(name_map[name])
  end
end

local dataset = {}
for jdn = min_jdn, max_jdn do
  local name = jdn_map[jdn]
  if name then
    local year, month, day = calendar.jdn_to_date(jdn)
    local data = dataset[year]
    if not data then
      data = {}
      dataset[year] = data
    end
    local kind
    if name:find "休日$" then
      kind = "休日"
    else
      kind = "祝日"
    end
    data[#data + 1] = {
      name = name;
      kind = kind;
      year = year;
      month = month;
      day = day;
    }
  end
end

local function write_lua(filename, data)
  local out = assert(io.open(filename, "w"))
  out:write [[
local items = {
]]
  for i = 1, #data do
    local item = data[i]
    out:write(([[
  { year = %d, month = %2d, day = %2d, kind = "%s", name = "%s" };
]]):format(item.year, item.month, item.day, item.kind, item.name))
  end
out:write [[
}

]]

  local months = {}
  for month = 1, 12 do
    months[month] = {}
  end
  for i = 1, #data do
    local item = data[i]
    local days = months[item.month]
    days[#days + 1] = i
  end

out:write [[
return {
]]

  for i = 1, #months do
    local days = months[i]
    local n = #days
    if n == 0 then
      out:write "  {};\n"
    elseif n == 1 then
      local j = days[1]
      local item = data[j]
      out:write(("  { [%d] = items[%d] };\n"):format(item.day, j))
    else
      out:write "  {\n"
      for j = 1, #days do
        local k = days[j]
        local item = data[k]
      out:write(("    [%d] = items[%d];\n"):format(item.day, k))
      end
      out:write "  };\n"
    end
  end
  out:write [[
}
]]
  out:close()
end

local function write_json(filename, data)
  local out = assert(io.open(filename, "w"))
  out:write "[\n"
  for i = 1, #data do
    local item = data[i]
    local comma = ","
    if i == #data then
      comma = ""
    end
    out:write(([[
  { "year": %d, "month": %2d, "day": %2d, "kind": "%s", "name": "%s" }%s
]]):format(item.year, item.month, item.day, item.kind, item.name, comma))
  end
  out:write "]\n"
  out:close()
end

os.execute("mkdir -p dromozoa/calendar/dataset")
for year = min_year, max_year do
  local filename = ("dromozoa/calendar/dataset/holidays%d.lua"):format(year)
  write_lua(filename, dataset[year])
end

local filename = "dromozoa/calendar/dataset/holidays.lua"
local out = assert(io.open(filename, "w"))
out:write(([[
return { min_year = %d, max_year = %d }
]]):format(min_year, max_year))
out:close()

os.execute("mkdir -p docs/dataset")
for year = min_year, max_year do
  local filename = ("docs/dataset/holidays%d.json"):format(year)
  write_json(filename, dataset[year])
end

local filename = "docs/dataset/holidays.json"
local out = assert(io.open(filename, "w"))
out:write(([[
{ "min_year": %d, "max_year": %d }
]]):format(min_year, max_year))
out:close()
