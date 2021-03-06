with Ada.Text_IO; use Ada.Text_IO;
with Record_Selection;
with Dates; use Dates;

procedure Main is
   D : Date := (1, January, 2000);
begin
   Record_Selection;

   Put_Line ("Example using renaming: ");
   Display_Month(D);
   Put_Line ("Increasing month...");
   Increase_Month(D);
   Display_Month(D);

end Main;
