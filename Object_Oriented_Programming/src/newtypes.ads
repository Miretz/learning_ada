package Newtypes is
   type Point is record
      X, Y : Integer;
   end record;

   type New_Point is new Point;
end Newtypes;
