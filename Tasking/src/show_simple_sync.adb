with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Simple_Sync is
   task T;
   task body T is
   begin
      for I in 1 .. 10 loop
         Put_Line ("Hello");
      end loop;
   end T;

begin
   null;
   -- main application will wait here until all tasks are done
end Show_Simple_Sync;
