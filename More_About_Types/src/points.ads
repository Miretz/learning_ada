with Ada.Text_IO; use Ada.Text_IO;

package Points is
   type Point is record
      X, Y : Integer := 0;
   end record;

   type Point_Array is
     array (Positive range <>) of Point;

   -- use default values
   Origin : Point := (X | Y => <>);

   -- likewise, use the defaults
   Origin_2 : Point := (others => <>);

   Points_1 : Point_Array := ((1,2),(3,4));
   Points_2 : Point_Array := (1 => (1,2),
                              2 => (3,4),
                              3 .. 20 => <>);

   procedure Print_Points(L : in out Point_Array);

end Points;
