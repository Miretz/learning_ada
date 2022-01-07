with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Numerics; use Ada.Numerics;

procedure Custom_Fixed_Point_Range is
   type T_Inv_trig is delta 2.0**(-15) * Pi range -Pi / 2.0 .. Pi / 2.0;

begin
   Put_Line
     ("T_Inv_trig requres " & Integer'Image (T_Inv_trig'Size) & " bits.");
   Put_Line
     ("The delta value of T_Inv_trig is " &
      T_Inv_trig'Image (T_Inv_trig'Delta));
   Put_Line
     ("The minimum value of T_Inv_trig is " &
      T_Inv_trig'Image (T_Inv_trig'First));
   Put_Line
     ("The maximum value of T_Inv_trig is " &
      T_Inv_trig'Image (T_Inv_trig'Last));
end Custom_Fixed_Point_Range;
