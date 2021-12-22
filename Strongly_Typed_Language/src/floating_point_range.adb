with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics; use Ada.Numerics;

procedure Floating_Point_Range is

   type T_Norm is new Float range -1.0 .. 1.0;
   A  : T_Norm;

   type T6_Inv_Trig is
   digits 6 range -Pi / 2.0 .. Pi / 2.0;
   B : T6_Inv_Trig;

begin
   A := 1.0;

   -- A := 2.0;
   -- Error

   Put_Line ("The value of A is "
             & T_Norm'Image(A));

   B := 1.1;
   Put_Line ("The value of B is "
             & T6_Inv_Trig'Image(B));
end Floating_Point_Range;
