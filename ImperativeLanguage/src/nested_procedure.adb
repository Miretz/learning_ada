with Ada.Text_IO; use Ada.Text_IO;

procedure nested_procedure is
   procedure Nested is
   begin
      Put_Line("Nested Hello World!");
   end Nested;
   -- Call to Nested
begin
   Nested;
end nested_procedure;
