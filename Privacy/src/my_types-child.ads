package My_Types.Child is
private
   -- we can initialize private component in the private section of the child
   -- package
   E : Priv_Rec := (Number => 99);
end My_Types.Child;
