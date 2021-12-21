with Ada.Text_IO; use Ada.Text_IO;

procedure while_loop is
   I: Integer := 1;
begin
   while I <= 5 loop
      Put_Line(Integer'Image(I) & ". iteration");
      I := I + 1;
   end loop;
end while_loop;
