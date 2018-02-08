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

-- https://ja.wikipedia.org/wiki/%E3%83%A6%E3%83%AA%E3%82%A6%E3%82%B9%E9%80%9A%E6%97%A5
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

assert(tostring(date_to_jdn(2000, 1, 1)) == "2451545")
