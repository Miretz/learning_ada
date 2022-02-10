with Ada.Text_IO; use Ada.Text_IO;

package body P is

   procedure Foo (Self : in out My_Class) is
   begin
      Put_Line ("In My_Class.Foo");
   end Foo;

   procedure Foo (Self : in out Derived) is
   begin
      Put_Line ("In Derived.Foo, A = " & Integer'Image (Self.A));
   end Foo;

end P;
