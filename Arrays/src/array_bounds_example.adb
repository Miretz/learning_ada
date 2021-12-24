with Ada.Text_IO; use Ada.Text_IO;

procedure Array_Bounds_Example is
   -- range of valid values
   type My_Int is range 0 .. 1000;
   -- valid indices of the array
   type Index is range 11 .. 15;

   type My_Int_Array is array (Index) of My_Int;
   Tab : constant My_Int_Array := (2, 3, 5, 7, 11);
begin
   New_Line;
   for I in Index loop
      Put_Line ("Index: "
           & Index'Image (I)
           & " Value: "
           & My_Int'Image (Tab (I)));
   end loop;
   New_Line;
end Array_Bounds_Example;
