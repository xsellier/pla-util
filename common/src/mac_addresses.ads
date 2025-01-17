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
with Octets;

use Octets;

package MAC_Addresses is

   subtype MAC_Address_Octets_Type is Octets_Type (1 .. 6);

   type MAC_Address_Type is tagged private;

   function "<" (Left  : MAC_Address_Type;
                 Right : MAC_Address_Type) return Boolean;

   function Create_MAC_Address (Octets : MAC_Address_Octets_Type) return MAC_Address_Type;

   function Get_Octets (Self : MAC_Address_Type) return MAC_Address_Octets_Type;

   function Image (Self      : MAC_Address_Type;
                   Separator : Character := ':') return String;

   Broadcast_MAC_Address : constant MAC_Address_Type;
   Null_MAC_Address      : constant MAC_Address_Type;

private

   type MAC_Address_Type is tagged
      record
         Octets : MAC_Address_Octets_Type;
      end record;

   Broadcast_MAC_Address : constant MAC_Address_Type := (Octets => (others => 16#ff#));
   Null_MAC_Address      : constant MAC_Address_Type := (Octets => (others => 16#00#));

end MAC_Addresses;
