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

print "==== cao.go.jp ===="
local handle = assert(io.popen("cat docs/cao.go.jp/*.csv | iconv -f CP932"))
for line in handle:lines() do
  line = line:gsub("\r$", "")
  if line ~= "国民の祝日月日,国民の祝日名称" then
    local year, month, day, name = assert(line:match "^(%d%d%d%d)%-(%d%d)%-(%d%d),([^,]+)$")
    year = assert(tonumber(year, 10))
    month = assert(tonumber(month, 10))
    day = assert(tonumber(day, 10))
    print(year, month, day, name)
  end
end
handle:close()

print "==== cybozu.co.jp ===="
local handle = assert(io.popen("cat docs/cybozu.co.jp/*.csv | iconv -f CP932"))
for line in handle:lines() do
  line = line:gsub("\r$", "")
  line = line:gsub("^\"(%d+/%d+/%d+)\t*\",", "%1,")
  local year, month, day, name = assert(line:match "^(%d%d%d%d)/(%d%d?)/(%d%d?),([^.]+)$")
  print(year, month, day, name)
end
