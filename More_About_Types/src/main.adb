with Ada.Text_IO; use Ada.Text_IO;
with Points; use Points;
with Overloading;
with Qual_Expr;
with Access_Types;
with Simple_List_Example;
with Var_Size_Record;
with Var_Size_Record_2;
with Test_Discriminants;
with More_About_Records;
with Test_Variant_Records;
with Test_Variant_Records_2;

procedure Main is
begin
   Print_Points(Points_2);
   Overloading;
   Simple_List_Example;
   More_About_Records;
   Test_Variant_Records;
   Test_Variant_Records_2;
end Main;
