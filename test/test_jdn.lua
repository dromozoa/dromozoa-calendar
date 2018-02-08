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

local date_to_jdn = require "dromozoa.calendar.date_to_jdn"

assert(tostring(date_to_jdn(2000, 1, 1)) == "2451545")

-- Wikipedia
assert(date_to_jdn(-1975, 11,  7) == 1000000)
assert(date_to_jdn(-1332,  1, 23) == 1234567)
assert(date_to_jdn(  763,  9, 14) == 2000000)
assert(date_to_jdn( 1582, 10,  4) == 2299160)
assert(date_to_jdn( 1582, 10, 15) == 2299161)
assert(date_to_jdn( 1710,  2, 23) == 2345678)
assert(date_to_jdn( 2000,  1,  1) == 2451545)
assert(date_to_jdn( 2014,  5, 11) == 2456789)
assert(date_to_jdn( 2318,  7, 18) == 2567890)
assert(date_to_jdn( 3501,  8, 15) == 3000000)
assert(date_to_jdn( 4752,  4,  7) == 3456789)
assert(date_to_jdn( 6239,  7, 12) == 4000000)

-- Astronomical Algorithms
assert(date_to_jdn( 2000,  1,  1) == 2451545)
assert(date_to_jdn( 1999,  1,  1) == 2451180)
assert(date_to_jdn( 1987,  1, 27) == 2446823)
assert(date_to_jdn( 1987,  6, 19) == 2446966)
assert(date_to_jdn( 1988,  1, 27) == 2447188)
assert(date_to_jdn( 1988,  6, 19) == 2447332)
assert(date_to_jdn( 1900,  1,  1) == 2415021)
assert(date_to_jdn( 1600,  1,  1) == 2305448)
assert(date_to_jdn( 1600, 12, 31) == 2305813)
assert(date_to_jdn(  837,  4, 10) == 2026872)
assert(date_to_jdn( -123, 12, 31) == 1676497)
assert(date_to_jdn( -122,  1,  1) == 1676498)
assert(date_to_jdn(-1000,  7, 12) == 1356001)
assert(date_to_jdn(-1000,  2, 29) == 1355867)
assert(date_to_jdn(-1001,  8, 17) == 1355671)
assert(date_to_jdn(-4712,  1,  1) ==       0)
