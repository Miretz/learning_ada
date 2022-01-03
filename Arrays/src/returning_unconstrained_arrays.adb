with Ada.Text_IO; use Ada.Text_IO;

procedure Returning_Unconstrained_Arrays is
   type Days is (Monday, Tuesday, Wednesday,
                 Thursday, Friday,
                 Saturday, Sunday);
   function Get_Day_Name(Day : Days := Monday)
                         return String is
   begin
      return
        (case Day is
            when Monday => "Monday",
            when Tuesday => "Tuesday",
            when Wednesday => "Wednesday",
            when Thursday => "Thursday",
            when Friday => "Friday",
            when Saturday => "Saturday",
            when Sunday => "Sunday");
   end Get_Day_Name;

begin
   Put_Line("First day is "
            & Get_Day_Name (Days'First));
end Returning_Unconstrained_Arrays;
