pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package test_h is

   func_cnt : aliased int  -- ./test.h:1
   with Import => True, 
        Convention => C, 
        External_Name => "func_cnt";

   function my_func (a : int) return int  -- ./test.h:3
   with Import => True, 
        Convention => C, 
        External_Name => "my_func";

  -- compile using
  -- gcc -c -fdump-ada-spec -C ./test.h
end test_h;
