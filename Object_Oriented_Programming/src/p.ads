package P is

   type My_Class is tagged null record;

   procedure Foo (Self : in out My_Class);

   type Derived is new My_Class with record
      A : Integer;
   end record;

   overriding procedure Foo (Self : in out Derived);

end P;
