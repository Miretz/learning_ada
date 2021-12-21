with Ada.Text_IO; use Ada.Text_IO;

procedure bare_loops is
   -- setting initial value
   I: Integer := 1;
begin
   loop
      Put_Line("Hello!" & Integer'Image (I));
      -- exit statement
      exit when I = 5;
         
      -- assignment
      -- there is no I++
      I := I + 1;
   end loop;
   
end bare_loops;
