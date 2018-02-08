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

local floor = math.floor

return function (year, month, day)
  if month < 3 then
    year = year - 1
    month = month + 13
  else
    month = month + 1
  end

  local jd = floor(365.25 * (year + 4716)) + floor(30.6001 * month) + day - 1524.5
  if jd >= 2299160.5 then
    local A = floor(year / 100)
    jd = jd + 2 - A + floor(A / 4)
  end

  return floor(jd + 0.5)
end
