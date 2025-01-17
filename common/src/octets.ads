------------------------------------------------------------------------
--  pla-util - A powerline adapter utility
--  Copyright (C) 2021 John Serock
--
--  This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation, either version 3 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program. If not, see <http://www.gnu.org/licenses/>.
------------------------------------------------------------------------
with Ada.Text_IO;
with GNAT.Formatted_String;
with Interfaces;

package Octets is

   type Octets_Type is array (Positive range <>) of Interfaces.Unsigned_8;

   package Octet_Text_IO is new Ada.Text_IO.Modular_IO (Num => Interfaces.Unsigned_8);

   function Octet_Format is new GNAT.Formatted_String.Mod_Format (Int => Interfaces.Unsigned_8,
                                                                  Put => Octet_Text_IO.Put);

end Octets;
