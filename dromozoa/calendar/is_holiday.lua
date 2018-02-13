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

local min_year = holidays.min_year
local max_year = holidays.max_year
local tree = holidays.tree

return function (year, month, day)
  if min_year <= year and year <= max_year then
    local item = tree[year][month][day]
    if item then
      return item
    else
      return false
    end
  else
    return nil
  end
end