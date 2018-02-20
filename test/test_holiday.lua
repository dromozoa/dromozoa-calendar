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

assert(calendar.is_holiday(2005, 1, 1) == nil)
local item = calendar.is_holiday(2006, 1, 1)
assert(item.kind == "祝日")
assert(item.name == "元日")
local item = calendar.is_holiday(2006, 1, 2)
assert(item.kind == "休日")
assert(item.name == "振替休日")
assert(calendar.is_holiday(2006, 1, 3) == false)
local item = calendar.is_holiday(2006, 5, 4)
assert(item.kind == "休日")
assert(item.name == "国民の休日")

assert(calendar.holidays.min_year == 2006)
assert(calendar.holidays.max_year == 2019)
for year = calendar.holidays.min_year, calendar.holidays.max_year do
  for month = 1, 12 do
    assert(calendar.holidays.tree[year][month])
  end
end

assert(calendar.is_holiday("2018", "01", "08"))
