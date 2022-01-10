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
with Test_Non_Generic_Swap_Colors;
with Test_Generic_Swap_Colors;
with Test_Reverse_Colors;
with Test_Reverse_Colors_2;

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

   Put_Line ("Example non-generic swap");
   Test_Non_Generic_Swap_Colors;
   New_Line;
   Put_Line ("Example generic swap");
   Test_Generic_Swap_Colors;
   New_Line;

   Put_Line ("Example generic reverse colors");
   Test_Reverse_Colors;
   New_Line;

   Put_Line ("Example: Test application");
   Test_Reverse_Colors_2;
   New_Line;

end Main;
