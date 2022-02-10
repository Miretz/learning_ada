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

begin
   Primitives;
end Main;
