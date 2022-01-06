with Gtk_Boilerplate; use Gtk_Boilerplate;

package body Click_Handlers is
   
   procedure Increment_Handler
     (Self : access Gtk_Button_Record'Class) is
   begin
      Clicks := Clicks + 1;
      Self.Set_Label("Clicked "
                     & Integer'Image(Clicks)
                     & " times.");
   end Increment_Handler;
   
   Second_Button_Clicked : Boolean := False;   
   
   procedure Label_Change_Handler
     (Label : access GObject_Record'Class) is
      L : Gtk_Label;
   begin
      L := Gtk_Label(Label);
      if Second_Button_Clicked then
         L.Set_Markup(Big_Text_Markup("You clicked the second button again!"));
      else
         Second_Button_Clicked := True;
         L.Set_Markup(Big_Text_Markup("You clicked the second button!"));
      end if;
   end Label_Change_Handler;
   
end Click_Handlers;
