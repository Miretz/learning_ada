with Dates; use Dates;

-- Access type (aka Pointer) declaration
package Access_Types is

   type Date_Acc is access Date;
   type Date_Acc_2 is access all Date;

   D : Date_Acc := null; -- null pointer

   -- Invaid: These are differetn access types
   -- D2 : Date_Acc_2 := D;

   -- need to do type conversion
   D3 : Date_Acc_2 := Date_Acc_2(D);

   -- allocation
   DD : Date_Acc := new Date;

   -- size allocation
   type String_Acc is access String;
   Msg : String_Acc; -- null by default
   -- constraint is needed when allocating String
   Buffer : String_Acc := new String(1 .. 10);

   DDD : Date_Acc := new Date'(5, January, 2022);
   MsgMsg : String_Acc := new String'("Hello");

end Access_Types;
