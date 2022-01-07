with Ada.Text_IO; use Ada.Text_IO;

procedure Decimal_Fixed_Point_Smaller is
   type T3_D3 is delta 10.0**(-3) digits 3;
   type T6_D6 is delta 10.0**(-6) digits 6;
   A : T3_D3 := T3_D3'Delta;
   B : T3_D3 := 0.5;
   C : T6_D6;
begin
   Put_Line ("The value of A is " & T3_D3'Image (A));

   A := A * B;
   Put_Line ("The value of A * B is " & T3_D3'Image (A));

   A := T3_D3'Delta;
   C := A * B;
   Put_Line ("The value of A * B is " & T6_D6'Image (C));

end Decimal_Fixed_Point_Smaller;
