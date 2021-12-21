with Ada.Text_IO; use Ada.Text_IO;
with Increment_By;

-- nested subprograms
procedure Show_Increment is
   A, B, C : Integer;
   
   procedure Display_Result is
   begin
      Put_Line ("Increment of "
                & Integer'Image (A)
                & " with "
                & Integer'Image (B)
                & " is "
                & Integer'Image (C));
   end Display_Result;
   
begin
   A := 10;
   B := 3;
   C := Increment_By(A, B);
   Display_Result;
end Show_Increment;
