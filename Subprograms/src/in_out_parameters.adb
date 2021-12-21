with Ada.Text_IO; use Ada.Text_IO;

procedure In_Out_Parameters is
   -- note that by default params are "in" parameters and cannot be changed
   -- "in out" enables reading and writing to the parameters
   -- only "out" without "in" keyword means the value might be uninitialized
   procedure Swap (A, B : in out Integer) is
      Tmp : Integer;
   begin
      Tmp := A;
      A   := B;
      B   := Tmp;
   end Swap;

   A : Integer := 12;
   B : Integer := 44;
begin
   Swap (A, B);
   Put_Line (Integer'Image (A));
end In_Out_Parameters;
