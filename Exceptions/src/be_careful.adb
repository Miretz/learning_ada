with Ada.Text_IO;    use Ada.Text_IO;
with Ada.Exceptions; use Ada.Exceptions;

-- Exceptions raised in the declarative section are not caught
-- by the handlers of that block!

-- In the following, exception will not be caught!

procedure Be_Careful is

   function Dangerous return Integer is
   begin
      raise Constraint_Error;
      return 42;
   end Dangerous;

begin

   declare
      A : Integer := Dangerous;
   begin
      Put_Line (Integer'Image (A));
   exception
      when Constraint_Error =>
         Put_Line ("Error! ... will not print because is not caught here");
   end;
end Be_Careful;
