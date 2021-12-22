with Ada.Text_IO; use Ada.Text_IO;

procedure Integer_Type_Example is
   -- integer type with a specified inclusive range
   type My_Int is range -1 .. 20;

begin
   Put ("My_Int range: ");
   for I in My_Int loop
      Put (My_Int'Image(I) & ", ");
   end loop;
   Put_Line ("");
end Integer_Type_Example;
