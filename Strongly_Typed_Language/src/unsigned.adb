with Ada.Text_IO; use Ada.Text_IO;

procedure Unsigned is
   -- unsigned integers are called modular types in Ada
   type Mod_Int is mod 2 ** 5;
   -- range is 0 .. 31

   A : constant Mod_Int := 20;
   B : constant Mod_int := 15;
   M : constant Mod_Int := A + B;
   -- No overflow
   -- M = (20 + 15) mod 32

begin
   Put ("Unsigned: ");
   for I in 1 .. M loop
      Put (Mod_Int'Image(I) & ", ");
   end loop;
   Put_Line("");
end Unsigned;
