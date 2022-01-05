with Ada.Text_IO; use Ada.Text_IO;
with Pkg; use Pkg;

procedure Overloading is
   C : Integer := F('C');
   I : Integer := F(10);
   S : String  := Convert(SSID'(123_145_255));
   K : Integer := Convert(123456);
begin
   Put_Line(Integer'Image(C));
   Put_Line(Integer'Image(I));
   Put_Line(S);
   Put_Line(Integer'Image(K));
end Overloading;
