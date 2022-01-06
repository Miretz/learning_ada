with Gdk.Event;       use Gdk.Event;

with Gtk.Box;         use Gtk.Box;
with Gtk.Label;       use Gtk.Label;
with Gtk.Widget;      use Gtk.Widget;
with Gtk.Button;      use Gtk.Button;
with Gtk.Main;
with Gtk.Window;      use Gtk.Window;

with Gtk_Boilerplate; use Gtk_Boilerplate;
with Click_Handlers;  use Click_Handlers;

procedure Main is

   Win   : Gtk_Window;
   Label : Gtk_Label;
   Box   : Gtk_Vbox;
   H_Box   : Gtk_Hbox;
   Button: Gtk_Button;
   Button_2: Gtk_Button;

begin
   --  Initialize GtkAda.
   Gtk.Main.Init;

   --  Create a window with a size of 400x400
   Gtk_New (Win);
   Win.Set_Default_Size (400, 400);

   --  Create a box to organize vertically the contents of the window
   Gtk_New_Vbox (Box);
   Win.Add (Box);

   --  Add a label
   Gtk_New (Label);
   Label.Set_Markup(Big_Text_Markup("Hello world!"));
   Box.Add (Label);

   -- Add H_Box
   Gtk_New_Hbox (H_Box, False, 4);
   Box.Pack_End (H_Box, False);

   -- Add a button with callback
   Gtk_New (Button, "Click this button!");
   H_Box.Add (Button);
   Button.On_Clicked (Increment_Handler'Access);

   -- Add a second button with callback
   Gtk_New (Button_2, "Me too!");
   H_Box.Add (Button_2);
   Button_2.On_Clicked (Call => Label_Change_Handler'Access, Slot => Label);

   -- Stop the Gtk process when closing the window
   Win.On_Delete_Event (Delete_Event_Cb'Unrestricted_Access);

   --  Show the window and present it
   Win.Show_All;
   Win.Present;

   --  Start the Gtk+ main loop
   Gtk.Main.Main;
end Main;
