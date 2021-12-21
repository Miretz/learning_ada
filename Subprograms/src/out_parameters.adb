with Ada.Text_IO; use Ada.Text_IO;

procedure Out_Parameters is
   procedure Foo (A : out Integer) is
   begin
      A := 42;
   end Foo;
   K : Integer;
begin
   Foo(K);
   Put_Line("K is now" & Integer'Image(K));
end Out_Parameters;
