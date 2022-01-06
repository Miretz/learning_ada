with Gdk.Event;       use Gdk.Event;
with Gtk.Widget;      use Gtk.Widget;
with Gtk.Main;

package Gtk_Boilerplate is

   function Delete_Event_Cb
     (Self  : access Gtk_Widget_Record'Class;
      Event : Gdk.Event.Gdk_Event)
      return Boolean;
   
   function Big_Text_Markup (Text : String) return String;
   
end Gtk_Boilerplate;
