with Primitives;
with P; use P;

procedure Main is
   Obj_1 : My_Class;
   Obj_2 : Derived := (A => 12);

   -- Obj_3 : My_Class := 02; -- invalid, error assigning derived type

   -- to fix the above
   Obj_3 : My_Class'Class := Obj_2;
   -- My_Class'Class designates classwide type for My_Class
   -- which includes all descending types

   Obj_4 : My_Class'Class := Obj_1;

   Obj_5 : My_Class := My_Class (Obj_2);
   -- View conversion - changes the actual class tag

   package Extend is
      type D2 is new Derived with null record;
      procedure Bar (Self : in out D2; Val : Integer);
   end Extend;

   package body Extend is
      procedure Bar (Self : in out D2; Val : Integer) is
      begin
         Self.A := Self.A + Val;
      end Bar;
   end Extend;

   use Extend;

   Obj_Ex : D2 := (A => 15);

begin
   Primitives;

   Foo (Obj_1); -- Non dispatching: Calls My_Class.Foo
   Foo (Obj_2); -- Non dispatching: Calls Derived.Foo
   Foo (Obj_3); -- Dispatching: Calls Derived.Foo
   Foo (Obj_4); -- Dispatching: Calls My_Class.Foo

   Foo (Obj_5); -- Non dispatching: Calls My_Class.Foo

   -- Same as above with dot notation
   Obj_1.Foo;
   Obj_2.Foo;
   Obj_3.Foo;
   Obj_4.Foo;
   Obj_5.Foo;

   Obj_Ex.Bar (2);
   Obj_Ex.Foo;
end Main;
