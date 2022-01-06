with Ada.Text_IO; use Ada.Text_IO;

package body Click_Handlers is
   
   procedure Increment_Handler
     (Self : access Gtk_Button_Record'Class) is
   begin
      Clicks := Clicks + 1;
      Put_Line("Current click count: " 
               & Integer'Image (Clicks));
      Self.Set_Label("Clicked "
                     & Integer'Image(Clicks)
                     & " times.");
   end Increment_Handler;
   
   procedure Label_Change_Handler
     (Label : access GObject_Record'Class) is
      L : Gtk_Label;
   begin
      L := Gtk_Label(Label);
      L.Set_Text("You clicked the second button!");
   end Label_Change_Handler;

end Click_Handlers;
