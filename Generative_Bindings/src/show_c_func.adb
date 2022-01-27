with Interfaces.C; use Interfaces.C;
with Ada.Text_IO;  use Ada.Text_IO;
with test_h;       use test_h;

procedure Show_C_Func is
   V : int;
begin
   V := my_func (1);
   V := my_func (2);
   V := my_func (3);
   Put_Line ("Result is " & int'Image (V));
   Put_Line ("Function was called " & int'Image (func_cnt) & " times");
end Show_C_Func;
