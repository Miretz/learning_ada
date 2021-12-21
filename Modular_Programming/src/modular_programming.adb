with Ada.Text_IO; use Ada.Text_IO;
with Week;
with Week.Child;
with Operations;

procedure Modular_Programming is
   use Week;
   use Week.Child;
   use Operations;
   -- make everything in the package visible only for this procedure

   I : Integer := 0;
   R : Integer;

   procedure Display_Update_Values is
      Incr : constant Integer := Get_Increment_Value;
   begin
      Put_Line(Integer'Image (I)
               & " incremented by "
               & Integer'Image(Incr)
               & " is "
               & Integer'Image (R));
      I := R;
   end Display_Update_Values;

begin
   Put_Line ("First day of the week is " & Mon);
   Put_Line ("First day of the week is " & Get_First_Of_Week);

   R := Increment_By (I);
   Display_Update_Values;
   R := Increment_By (I);
   Display_Update_Values;

   R := Increment_By (I, 5);
   Display_Update_Values;
   R := Increment_By (I);
   Display_Update_Values;

   R := Increment_By (I, 10);
   Display_Update_Values;
   R := Increment_By (I);
   Display_Update_Values;

end Modular_Programming;
