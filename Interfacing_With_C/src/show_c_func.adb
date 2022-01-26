with Interfaces.C; use Interfaces.C;
with Ada.Text_IO;  use Ada.Text_IO;

procedure Show_C_Func is

   function my_func (a : int) return int with
      Import     => True,
      Convention => C;

      -- Imports the function from C code

   V : int;

begin
   V := my_func (2);
   Put_Line ("Result is " & int'Image (V));
end Show_C_Func;
