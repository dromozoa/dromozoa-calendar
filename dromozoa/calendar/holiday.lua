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

local holidays = require "dromozoa.calendar.dataset.holidays"

local min_year = holidays.min_year
local max_year = holidays.max_year

local dataset = {}
for year = min_year, max_year do
  dataset[year] = require(("dromozoa.calendar.dataset.holidays%d"):format(year))
end

return function (year, month, day)
  local data = dataset[year]
  if data then
    for i = 1, #data do
      local item = data[i]
      if item.month == month and item.day == day then
        return item
      end
    end
    return false
  else
    return nil
  end
end
