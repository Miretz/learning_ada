with Ada.Text_IO; use Ada.Text_IO;

procedure Indefinite_Subtypes is

   function Get_Number return Integer is
   begin
      return Integer'Value (Get_Line);
   end Get_Number;

   -- indefinite subtype
   A : String := "Hello";

   -- definite subtype
   B : String (1 .. 5) := "Hello";

   -- indefinite subtype - Get_Number computed at runtime
   -- C : String (1 .. Get_Number);

begin
   null;
end Indefinite_Subtypes;
