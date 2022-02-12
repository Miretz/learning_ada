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

begin
   Primitives;

   Foo (Obj_1); -- Non dispatching: Calls My_Class.Foo
   Foo (Obj_2); -- Non dispatching: Calls Derived.Foo
   Foo (Obj_3); -- Dispatching: Calls Derived.Foo
   Foo (Obj_4); -- Dispatching: Calls My_Class.Foo

   Foo (Obj_5); -- Non dispatching: Calls My_Class.Foo
end Main;
