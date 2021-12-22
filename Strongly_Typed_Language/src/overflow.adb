with Ada.Text_IO; use Ada.Text_IO;

procedure Overflow is
   type My_Int is range 1 .. 20;
   A : constant My_Int := 12;
   B : constant My_Int := 15;
   M : My_Int := (A + B) / 2;
   -- A+B is more than 20, however the computational result
   -- is in range so the complier does not throw an exception
begin
   Put ("Overflow output: ");
   for I in 1 .. M loop
      Put (My_Int'Image(I) & ", ");
   end loop;

   -- this would raise a warning (value not in range)
   -- M := A + B;

   Put_Line("");
end Overflow;
