with Ada.Text_IO; use Ada.Text_IO;

procedure Traffic is

   type Airplane_ID is range 1 .. 10;
   task type Airplane (ID : Airplane_ID);
   type Airplane_Access is access Airplane;

   protected type Runway is
      -- all entries are guaranteed mutually exclusive
      entry Assign_Aircraft (ID : Airplane_ID);
      entry Cleared_Runway (ID : Airplane_ID);
      entry Wait_For_Clear;
   private
      Clear : Boolean := True;
   end Runway;

   type Runway_Access is access all Runway;

   task type Controller (My_Runway : Runway_Access) is
      -- message passing
      entry Request_Takeoff (ID : in Airplane_ID; Takeoff : out Runway_Access);
      entry Request_Approach
        (ID : in Airplane_ID; Approach : out Runway_Access);
   end Controller;

   -- allocation of instances
   Runway1     : aliased Runway;
   Controller1 : Controller (Runway1'Access);

   protected body Runway is
      -- blocks until Clear is True
      entry Assign_Aircraft (ID : Airplane_ID) when Clear is
      begin
         Clear := False;
         Put_Line (Airplane_ID'Image (ID) & " on runway ");
      end Assign_Aircraft;

      entry Cleared_Runway (ID : Airplane_ID) when not Clear is
      begin
         Clear := True;
         Put_Line (Airplane_ID'Image (ID) & " cleared runway ");
      end Cleared_Runway;

      entry Wait_For_Clear when Clear is
      begin
         null;
      end Wait_For_Clear;
   end Runway;

   task body Controller is
   begin
      loop
         My_Runway.Wait_For_Clear;
         select when Request_Approach'Count = 0 =>
            accept Request_Takeoff
              (ID : in Airplane_ID; Takeoff : out Runway_Access)
            do

               My_Runway.Assign_Aircraft (ID);
               Takeoff := My_Runway;
            end Request_Takeoff;

         or
            accept Request_Approach
              (ID : in Airplane_ID; Approach : out Runway_Access)
            do
               My_Runway.Assign_Aircraft (ID);
               Approach := My_Runway;
            end Request_Approach;
         or
            terminate;
         end select;
      end loop;
   end Controller;

   task body Airplane is
      Rwy : Runway_Access;
   begin
      Controller1.Request_Takeoff (ID, Rwy);
      Put_Line (Airplane_ID'Image (ID) & " taking off ...");
      delay 2.0;
      Rwy.Cleared_Runway (ID);
      delay 5.0; -- fly around a bit...
      loop
         select
            -- blocking call
            Controller1.Request_Approach (ID, Rwy);
            exit;
         or
            delay 3.0;
            Put_Line (Airplane_ID'Image (ID) & "   in holding pattern");
         end select;
      end loop;
      delay 4.0; -- landing approach
      Put_Line (Airplane_ID'Image (ID) & "         touched down!");
      Rwy.Cleared_Runway (ID);
   end Airplane;

   New_Airplane : Airplane_Access;

begin
   for I in Airplane_ID'Range loop
      New_Airplane := new Airplane (I);
      delay 4.0;
   end loop;
end Traffic;
