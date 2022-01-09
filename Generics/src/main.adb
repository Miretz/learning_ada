with Ada.Text_IO; use Ada.Text_IO;

with Operator;
with Set;
with Show_Generic_Instantiation;
with Show_Generic_Package;
with Show_Formal_Subprogram;

with Show_Float_Text_IO;
with Show_Float_IO_Inst;
with Show_Decimal_IO_Inst;

with Show_Stack;

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

   Put_Line ("Example IO Instances");
   Show_Float_Text_IO;
   New_Line;
   Show_Float_IO_Inst;
   New_Line;
   Show_Decimal_IO_Inst;
   New_Line;

   Put_Line ("Example ADTs");
   Show_Stack;
   New_Line;

end Main;
