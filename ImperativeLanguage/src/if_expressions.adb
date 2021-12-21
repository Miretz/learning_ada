with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure if_expressions is
   N : Integer;
begin
   
   Put("Enter an integer value: ");
   Get(N);
   Put(N);
   
   declare
      S : constant String :=
        (if N > 0 then " is a positive number"
         else " is not a positive number");
   begin
      Put_Line(S);
   end;
   
   -- another example
   for I in 1 .. N loop
      Put(Integer'Image(I) & ". ");
      Put_Line(if I mod 2 = 0 then "Even" else "Odd");
   end loop;
   
end if_expressions;
