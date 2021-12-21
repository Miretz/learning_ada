package body Operations is

   -- .adb file contains the body aka definitions
   
   Last_Increment : Integer := 1;
   
   function Increment_By
     (I    : Integer;
      Incr : Integer := 0) return Integer is
   begin
      -- not equals!
      if Incr /= 0 then
         Last_Increment := Incr;
      end if;
      return I + Last_Increment;
   end Increment_By;
   
   function Get_Increment_Value return Integer is
   begin
      return Last_Increment;
   end Get_Increment_Value;

end Operations;
