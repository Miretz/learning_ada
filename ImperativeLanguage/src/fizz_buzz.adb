with Ada.Text_IO; use Ada.Text_IO;

procedure fizz_buzz is
begin
   for I in 1 .. 20 loop
      if I mod 15 = 0 then
         Put_Line("FizzBuzz");
      elsif I mod 3 = 0 then
         Put_Line("Fizz");
      elsif I mod 5 = 0 then 
         Put_Line("Buzz");
      else
         Put_Line(Integer'Image(I));
      end if;
   end loop;
   
end fizz_buzz;
