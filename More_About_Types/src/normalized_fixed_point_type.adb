with Ada.Text_IO; use Ada.Text_IO;

procedure Normalized_Fixed_Point_Type is
   D : constant := 2.0**(-31);
   type TQ31 is delta D range -1.0 .. 1.0 - D;
begin
   Put_Line ("TQ31 requres " & Integer'Image (TQ31'Size) & " bits.");
   Put_Line ("The delta value of TQ31 is " & TQ31'Image (TQ31'Delta));
   Put_Line ("The minimum value of TQ31 is " & TQ31'Image (TQ31'First));
   Put_Line ("The maximum value of TQ31 is " & TQ31'Image (TQ31'Last));
end Normalized_Fixed_Point_Type;
