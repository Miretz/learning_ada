with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Simple_Task_Type_Array is

   task type TT is
      entry Start (N : Integer);
   end TT;

   task body TT is
      Task_N : Integer;
   begin
      accept Start (N : Integer) do
         Task_N := N;
      end Start;

      Put_Line ("In task T: " & Integer'Image (Task_N));
   end TT;

   My_Tasks : array (1 .. 5) of TT;
begin
   Put_Line ("In main");
   for I in My_Tasks'Range loop
      My_Tasks (I).Start (I);
   end loop;
end Show_Simple_Task_Type_Array;
