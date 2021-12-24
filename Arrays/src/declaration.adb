with Ada.Text_IO; use Ada.Text_IO;

procedure Declaration is
   type My_Int is range 0 .. 1000;
   type Index is range 1 .. 5;

   -- bounds and type
   type My_Int_Array is array(Index) of My_int;

   Arr : My_Int_Array := (2, 3, 5, 7, 11);
   V : My_Int;

begin
   for I in Index loop
      V := Arr (I);
      Put (My_Int'Image (V));
   end loop;
   New_Line;
end Declaration;
