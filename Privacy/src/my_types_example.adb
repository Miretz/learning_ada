with Ada.Text_IO; use Ada.Text_IO;

with My_Types;     use My_Types;
with My_Types.Ops; use My_Types.Ops;

procedure My_Types_Example is
   E : Priv_Rec;
begin
   Put_Line ("Presenting hidden information in My_Types via child package: ");
   Display (E);
end My_Types_Example;
