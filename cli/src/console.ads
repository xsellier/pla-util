------------------------------------------------------------------------
--  pla-util - A powerline adapter utility
--  Copyright (C) 2016-2021 John Serock
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
private with Commands;

package Console is

   procedure Process_Command_Line;

private

   procedure Check_DAK (Device_Name : String);
   procedure Check_NMK (Device_Name : String);
   procedure Discover (Device_Name : String);
   procedure Get_HFID (Device_Name : String);
   function Get_HFID_Level return Commands.HFID_Level_Type;
   procedure Get_Network_Info (Device_Name : String);
   function Get_Network_Scope return Commands.Network_Scope_Type;
   function Get_PLA_MAC_Address return String;
   procedure Reset (Device_Name : String);
   procedure Restart (Device_Name : String);
   procedure Set_HFID (Device_Name : String);
   procedure Set_NMK (Device_Name : String);
   function To_Command_Name (Source : String) return String;

end Console;
