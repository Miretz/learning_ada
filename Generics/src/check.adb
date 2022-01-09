with Ada.Text_IO; use Ada.Text_IO;

procedure Check (X, Y : T) is
   Result : Boolean;
begin
   Result := Comparison (X, Y);
   Put_Line
     ("Comparison (" & Description & ") between arguments is " &
      Boolean'Image (Result));
end Check;
