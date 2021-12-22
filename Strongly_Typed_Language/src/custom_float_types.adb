with Ada.Text_IO; use Ada.Text_IO;

procedure Custom_Float_Types is
   -- specify precision aka number of digits
   type T3 is digits 3;
   type T15 is digits 15;
   type T18 is digits 18;

   C1 : constant := 1.0e-4;
   A  : constant T3 :=  1.0 + C1;
   B  : constant T18 := 1.0 + C1;
begin
   Put_Line ("T3 requires "
             & Integer'Image (T3'Size)
             & " bits");
   Put_Line ("T15 requires "
             & Integer'Image (T15'Size)
             & " bits");
   Put_Line ("T18 requires "
             & Integer'Image (T18'Size)
             & " bits");
   -- the number of digits is also used for printing
   Put_Line ("The value of A is "
             & T3'Image (A));
   Put_Line ("The value of B is "
             & T18'Image (B));
end Custom_Float_Types;
