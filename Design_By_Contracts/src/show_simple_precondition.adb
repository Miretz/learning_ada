-- don't forget to add -gnata switch to the project to enable assertions

procedure Show_Simple_Precondition is

   procedure DB_Entry (Name : String; Age : Natural) with
      Pre => Name'Length > 0
   is
   begin
      -- Missing implementation
      null;
   end DB_Entry;

begin
   DB_Entry ("John", 30);

   -- Precodnition will fail because the name length is 0
   -- DB_Entry ("", 21);
end Show_Simple_Precondition;
