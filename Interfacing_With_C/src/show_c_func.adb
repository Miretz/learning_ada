with Interfaces.C; use Interfaces.C;
with Ada.Text_IO;  use Ada.Text_IO;

procedure Show_C_Func is

   function my_func (a : int) return int with
      Import     => True,
      Convention => C;

      -- Imports the function from C code

   procedure Test_Func with
      Import        => True,
      Convention    => C,
      External_Name => "test_func";

   V : int;

begin
   V := my_func (2);
   Put_Line ("Result is " & int'Image (V));
   Test_Func;
end Show_C_Func;
