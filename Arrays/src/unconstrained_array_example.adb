with Ada.Text_IO; use Ada.Text_IO;

procedure Unconstrained_Array_Example is
   type Days is (Mon, Tue, Wed, Thu, Fri, Sat, Sun);
   type Workload_Type is array (Days range <>) of Natural;
   -- indefinite array type, bounds are of type Days but not known
   -- <> ("box" notation) - wildcard which can mean anything

   -- specify the bounds and values
   Workload : constant
     Workload_Type (Mon .. Fri) := (Fri => 7, others => 8);
begin
   for I in Workload'Range loop
      Put_Line (Days'Image (I)
                & " Workload (h): "
                & Integer'Image (Workload (I)));
   end loop;
end Unconstrained_Array_Example;
