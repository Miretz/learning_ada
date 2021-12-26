with Ada.Text_IO; use Ada.Text_IO;

procedure Range_Example is
   type My_Int is range 0 .. 1000;
   type My_Int_Array is array (1 .. 5) of My_Int;
   Tab : constant My_Int_Array := (2, 3, 4, 7, 11);
begin
   Put ("Range Example: ");
   for I in Tab'Range loop
      Put (My_Int'Image (Tab (I)));
   end loop;
   New_Line;
end Range_Example;
