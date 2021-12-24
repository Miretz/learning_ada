with Ada.Text_IO; use Ada.Text_IO;

procedure Derived_Types is
   type Social_Security_Number is new Integer
   range 0 .. 999_99_9999;

   SSN: Social_Security_Number := 555_55_5555;

   I : Integer;
   -- Invalid : Social_Security_Number := -1;

   -- another example of deriving types
   type Days is (Mon, Tue, Wed, Thu, Fri, Sat, Sun);
   type Weekend_Days_Deriv is new Days range Sat .. Sun;

   -- subtype - similar to above but Days and Weekend_Days
   -- are actually the same type
   subtype Weekend_Days is Days range Sat .. Sun;

begin
   -- Illegal operations in Ada
   -- I := SSN;
   -- SSN := I;

   -- ok with explicit conversion
   I := Integer (SSN);
   SSN := Social_Security_Number (I);

   -- subtype example
   for I in Days loop
      case I is
         when Weekend_Days =>
            Put_Line ("Week end!");
         when others =>
              Put_Line ("Hello on "
                        & Days'Image (I));
      end case;
   end loop;

end Derived_Types;
