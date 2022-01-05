with Dates; use Dates;

-- Access type (aka Pointer) declaration
package Access_Types is

   type Date_Acc is access Date;
   type Date_Acc_2 is access Date;

   D : Date_Acc := null; -- null pointer

   -- Invaid: These are differetn access types
   -- D2 : Date_Acc_2 := D;

   -- need to do type conversion
   D3 : Date_Acc_2 := Date_Acc_2(D);

end Access_Types
