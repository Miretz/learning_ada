with Ada.Text_IO; use Ada.Text_IO;

procedure for_loops is
begin
   for I in 1 .. 5 loop
      -- range is 1 .. 5 inclusive
      -- I is local - cannot be refered from outside of the loop
      -- Integer'Image converts int to string
      -- & is string concatenation
      Put_Line("Hello, World!" & Integer'Image (I));
   -- need to mark end of loop
   end loop;
   
   -- same in reverse
   for I in reverse 1 .. 5 loop
      Put_Line("Hello, World!" & Integer'Image (I));
   end loop;
   
   -- bounds are evaluated first - this prints nothing,
   -- because upper is less than lower bound!
   -- the compiler should produce a warning
   for I in reverse 5 .. 1 loop
      Put_Line("Hello, World!" & Integer'Image (I));
   end loop;
      
   
end for_loops;
