with Ada.Text_IO; use Ada.Text_IO;

with Operator;
with Set;
with Show_Generic_Instantiation;
with Show_Generic_Package;
with Show_Formal_Subprogram;

procedure Main is
begin
   Put_Line ("Show_Generic_Instantiation");
   Show_Generic_Instantiation;
   New_Line;

   Put_Line ("Show_Generic_Package");
   Show_Generic_Package;
   New_Line;

   Put_Line ("Show_Formal_Subprogram");
   Show_Formal_Subprogram;
   New_Line;

end Main;
