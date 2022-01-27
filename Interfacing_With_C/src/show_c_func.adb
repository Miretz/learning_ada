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

   func_cnt : int with
      Import     => True,
      Convention => C;

begin
   V := my_func (1);
   V := my_func (2);
   V := my_func (3);
   Put_Line ("Result is " & int'Image (V));

   Put_Line ("Function was called " & int'Image (func_cnt) & " times");

   Test_Func;
end Show_C_Func;
