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
package body Commands is

   Message_No_Adapters     : constant String := "No adapters were discovered";
   Message_Not_Found       : constant String := "Failed to find adapter with matching MAC address";
   Default_Receive_Timeout : constant        := 250;
   Default_Send_Timeout    : constant        := 250;

   function Check_DAK (Device_Name : String;
                       Pass_Phrase : String) return Boolean is separate;

   function Check_NMK (Device_Name : String;
                       Pass_Phrase : String) return Boolean is separate;

   function Discover (Device_Name : String) return Power_Line_Adapter_Sets.Set is separate;

   function Get_HFID (Device_Name : String;
                      HFID_Level  : HFID_Level_Type) return HFID_String.Bounded_String is separate;

   function Get_Network_Info (Device_Name   : String;
                              Network_Scope : Network_Scope_Type) return Power_Line_Adapter.Network_Info_List_Type is separate;

   procedure Reset (Device_Name     : String;
                    PLA_MAC_Address : String) is separate;

   procedure Restart (Device_Name     : String;
                      PLA_MAC_Address : String) is separate;

   procedure Set_HFID (Device_Name : String;
                       HFID        : HFID_String.Bounded_String) is separate;

   procedure Set_NMK (Device_Name : String;
                      Pass_Phrase : String) is separate;

end Commands;
