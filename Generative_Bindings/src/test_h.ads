pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package test_h is

   type Test is null record;   -- incomplete struct

   function Create return access test  -- ./test.h:3
   with Import => True, 
        Convention => C, 
        External_Name => "test_create";

   procedure Destroy (t : access test)  -- ./test.h:5
   with Import => True, 
        Convention => C, 
        External_Name => "test_destroy";

   procedure Reset (t : access test)  -- ./test.h:7
   with Import => True, 
        Convention => C, 
        External_Name => "test_reset";

   procedure Set_Name (t : access test; name : Interfaces.C.Strings.chars_ptr)  -- ./test.h:9
   with Import => True, 
        Convention => C, 
        External_Name => "test_set_name";

   procedure Set_Address (t : access test; address : Interfaces.C.Strings.chars_ptr)  -- ./test.h:11
   with Import => True, 
        Convention => C, 
        External_Name => "test_set_address";

   procedure Display (t : access constant test)  -- ./test.h:13
   with Import => True, 
        Convention => C, 
        External_Name => "test_display";

  -- compile using
  -- gcc -c -fdump-ada-spec -C ./test.h
end test_h;
