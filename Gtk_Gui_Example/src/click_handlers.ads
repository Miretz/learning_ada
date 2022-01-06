with Gtk.Button;  use Gtk.Button;
with Gtk.Label;   use Gtk.Label;
with Glib.Object; use Glib.Object;

package Click_Handlers is

   Clicks : Integer := 0;

   procedure Increment_Handler (Self : access Gtk_Button_Record'Class);

   procedure Label_Change_Handler (Label : access GObject_Record'Class);

end Click_Handlers;
