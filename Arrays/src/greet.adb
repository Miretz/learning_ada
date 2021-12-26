with Ada.Text_IO; use Ada.Text_IO;

procedure Greet is
   Message1 : String(1..11) := "dlroW olleH";
   -- we can omit the range when initializing string constants
   Message2 : constant String := "dlroW olleH";
   -- same for any constant array
   type Integer_Array is array (Natural range <>) of Integer;
   My_Array : constant Integer_Array := (1,2,3,4);

begin
   for I in reverse Message1'Range loop
      Put (Message1(I));
   end loop;
   New_Line;

   for I in reverse Message2'Range loop
      Put (Message2(I));
   end loop;
   New_Line;

   for I in reverse My_Array'Range loop
      Put (Integer'Image (My_Array (I)));
   end loop;
   New_Line;
end Greet;
