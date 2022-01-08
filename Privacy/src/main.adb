with Encapsulate;
with Stacks_Example;
with Encapsulate.Child;
with My_Types_Example;
with My_Types.Child;

procedure Main is
begin
   Encapsulate.Hello;
   -- encapsulate.Hello2; -- error: not visible
   Stacks_Example;
   Encapsulate.Child.Hello3;
   My_Types_Example;
end Main;
