package body Gtk_Boilerplate is

   function Delete_Event_Cb
     (Self : access Gtk_Widget_Record'Class; Event : Gdk.Event.Gdk_Event)
      return Boolean
   is
      pragma Unreferenced (Self, Event);
   begin
      Gtk.Main.Main_Quit;
      return True;
   end Delete_Event_Cb;

   function Big_Text_Markup (Text : String) return String is
   begin
      return "<span size='17000'>" & Text & "</span>";
   end Big_Text_Markup;

end Gtk_Boilerplate;
