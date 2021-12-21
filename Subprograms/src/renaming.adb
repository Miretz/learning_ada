with Ada.Text_IO; use Ada.Text_IO;

procedure Renaming is

   -- original procedure with a long unchangable name
   procedure A_Proc_With_A_Very_Long_Name
     (A_Message : String) is
   begin
      Put_Line (A_Message);
   end A_Proc_With_A_Very_Long_Name;

   -- procedure that showcases the use of renaming
   procedure Show_Renaming is
      -- sort of like an alias
      procedure Show(S : String) renames
        A_Proc_With_A_Very_Long_Name;
   begin
      Show("Hello, Renamed Function!");
   end Show_Renaming;

   -- also standard library functions can be renamed
   procedure Show_Image_Renaming is
      function To_Str(I : Integer) return String
                      renames Integer'Image;
   begin
      Put_Line("Renaming example:" & To_Str(12));
      Put_Line("Renaming example:" & To_Str(13));
   end Show_Image_Renaming;

   -- renaming also allows to introduce default expressions / parameters
   procedure Show_Renaming_Defaults is
      procedure Show(S : String := "Hello, Renamed with default parameter!")
                     renames A_Proc_With_A_Very_Long_Name;
   begin
      Show;
   end Show_Renaming_Defaults;

begin
   Show_Renaming;
   Show_Image_Renaming;
   Show_Renaming_Defaults;
end Renaming;
