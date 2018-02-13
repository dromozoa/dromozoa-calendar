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

local holidays = require "dromozoa.calendar.holidays"
local is_holiday = require "dromozoa.calendar.is_holiday"

assert(is_holiday(2005, 1, 1) == nil)
local item = is_holiday(2006, 1, 1)
assert(item.kind == "祝日")
assert(item.name == "元日")
local item = is_holiday(2006, 1, 2)
assert(item.kind == "休日")
assert(item.name == "振替休日")
assert(is_holiday(2006, 1, 3) == false)
local item = is_holiday(2006, 5, 4)
assert(item.kind == "休日")
assert(item.name == "国民の休日")

for i = 1, #holidays.data do
  local item = holidays.data[i]
  io.write(("%4d年%2d月%2d日 %s\n"):format(item.year, item.month, item.day, item.name))
end
