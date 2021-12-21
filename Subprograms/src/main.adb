with Ada.Text_IO; use Ada.Text_IO;
with Increment;
with Increment_By;

procedure Main is
   A, B, C, D : Integer;
begin
   -- parameterless call, this function has default parameters
   C := Increment_By;

   Put_Line ("Using defaults for Increment_By is "
             & Integer'Image (C));
   A := 10;
   B := 3;
   C := Increment_By(A, B);

   Put_Line ("Increment of "
             & Integer'Image (A)
             & " with "
             & Integer'Image (B)
             & " is "
             & Integer'Image (C));

   A := 20;
   B := 5;
   -- named parameters
   C := Increment_By(I => A, Incr => B);

   Put_Line ("Increment of "
             & Integer'Image (A)
             & " with "
             & Integer'Image (B)
             & " is "
             & Integer'Image (C));

   D := 5;
   for F in 1 .. 5 loop
      D := Increment(D);
      Put_Line ("D is " & Integer'Image(D));
   end loop;

end Main;
