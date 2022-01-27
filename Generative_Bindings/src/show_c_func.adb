with Interfaces.C;         use Interfaces.C;
with Interfaces.C.Strings; use Interfaces.C.Strings;
with Ada.Text_IO;          use Ada.Text_IO;
with test_h;               use test_h;

with System;

procedure Show_C_Func is
   Name    : constant chars_ptr := New_String ("John Doe");
   Address : constant chars_ptr := New_String ("Small Town");

   T : access test := test_create;
begin
   test_reset (T);
   test_set_name (T, Name);
   test_set_address (T, Address);

   test_display (T);
   test_destroy (T);
end Show_C_Func;
