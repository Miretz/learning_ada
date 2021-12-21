with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure case_statement is
   N : Integer;
begin
   loop
      Put("Enter an integer value: ");
      Get(N);
      Put(N);
      case N is
         when 0 | 360 => Put_Line(" is due north");
         when 1 .. 89 => Put_Line(" is in the northeast");
         when 90 => Put_Line(" is due east");
         when 91 .. 179 => Put_Line(" is in the southeast");
         when 180 => Put_Line(" is due south");
         when 181 .. 269 => Put_Line(" is in the southwest");
         when 270 => Put_Line(" is due west");
         when 271 .. 359 => Put_Line(" is in the northwest");
         when others => 
            Put_Line(" Not in range 1 .. 360. Exiting.");
            exit;
      end case;
   end loop;
end case_statement;
