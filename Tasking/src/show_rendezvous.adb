with Ada.Text_IO; use Ada.Text_IO;

-- synchronization between tasks is called rendez-vous.

procedure Show_Rendezvous is

   task T is
      entry Start;
   end T;

   task body T is
   begin
      accept Start; -- waiting for somebody to call the entry
      Put_Line ("In T");
   end T;

begin
   Put_Line ("In Main");

   -- Calling T's entry:
   T.Start;
end Show_Rendezvous;
