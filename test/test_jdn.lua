-- Copyright (C) 2018,2023 Tomoyuki Fujimori <moyu@dromozoa.com>
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
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with dromozoa-calendar. If not, see <https://www.gnu.org/licenses/>.

local calendar = require "dromozoa.calendar"

local floor = math.floor

assert(tostring(calendar.date_to_jdn(2000, 1, 1)) == "2451545")

local year, month, day, wday = calendar.jdn_to_date(2451545)
assert(year  == 2000)
assert(month == 1)
assert(day   == 1)
assert(wday  == 6)
assert(tostring(year)  == "2000")
assert(tostring(month) == "1")
assert(tostring(day)   == "1")
assert(tostring(wday)  == "6")

local function check(year, month, day, jdn)
  assert(calendar.date_to_jdn(year, month, day) == jdn)
  local result = { calendar.jdn_to_date(jdn) }
  assert(result[1] == year)
  assert(result[2] == month)
  assert(result[3] == day)
end

-- Wikipedia
check(-1975, 11,  7, 1000000)
check(-1332,  1, 23, 1234567)
check(  763,  9, 14, 2000000)
check( 1582, 10,  4, 2299160)
check( 1582, 10, 15, 2299161)
check( 1710,  2, 23, 2345678)
check( 2000,  1,  1, 2451545)
check( 2014,  5, 11, 2456789)
check( 2318,  7, 18, 2567890)
check( 3501,  8, 15, 3000000)
check( 4752,  4,  7, 3456789)
check( 6239,  7, 12, 4000000)

-- Astronomical Algorithms
check( 2000,  1,  1, 2451545)
check( 1999,  1,  1, 2451180)
check( 1987,  1, 27, 2446823)
check( 1987,  6, 19, 2446966)
check( 1988,  1, 27, 2447188)
check( 1988,  6, 19, 2447332)
check( 1900,  1,  1, 2415021)
check( 1600,  1,  1, 2305448)
check( 1600, 12, 31, 2305813)
check(  837,  4, 10, 2026872)
check( -123, 12, 31, 1676497)
check( -122,  1,  1, 1676498)
check(-1000,  7, 12, 1356001)
check(-1000,  2, 29, 1355867)
check(-1001,  8, 17, 1355671)
check(-4712,  1,  1,       0)

local N = 40 * 12 - 1
for i = 0, N do
  local year = 2000 + floor(i / 12)
  local month = i % 12 + 1
  for j = -N, N do
    local x_year = year
    local x_month = month + j

    local y_year = x_year
    local y_month = x_month
    while y_month < 1 do
      y_year = y_year - 1
      y_month = y_month + 12
    end
    while y_month > 12 do
      y_year = y_year + 1
      y_month = y_month - 12
    end

    assert(calendar.date_to_jdn(x_year, x_month, 1) == calendar.date_to_jdn(y_year, y_month, 1))
  end
end

assert(calendar.date_to_jdn(1999, 2, 31) == calendar.date_to_jdn(1999, 3, 3))
assert(calendar.date_to_jdn(2000, 2, 31) == calendar.date_to_jdn(2000, 3, 2))
assert(calendar.date_to_jdn(2001, 2, 31) == calendar.date_to_jdn(2001, 3, 3))
