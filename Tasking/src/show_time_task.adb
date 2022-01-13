with Ada.Text_IO;   use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

with Delay_Aux_Pkg;

procedure Show_Time_Task is
   package Aux renames Delay_Aux_Pkg;

   task T;

   task body T is
      Cnt : Integer := 1;
   begin
      -- exact delay + computation causes time drift
      for I in 1 .. 5 loop
         delay 1.0;

         Aux.Show_Elapsed_Time;
         Aux.Computational_Intensive_App;
         Put_Line ("Cycle # " & Integer'Image (Cnt));
         Cnt := Cnt + 1;
      end loop;
      Put_Line ("Finished time-drifting loop");
   end T;

begin
   null;
end Show_Time_Task;
