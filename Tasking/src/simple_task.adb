with Ada.Text_IO; use Ada.Text_IO;

procedure Simple_Task is

   task T;
   task T2;

   -- starts as soon as the main application
   task body T is
   begin
      Put_Line ("In task T");
   end T;

   task body T2 is
   begin
      Put_Line ("In task T2");
   end T2;

begin
   Put_Line ("In main");
end Simple_Task;
