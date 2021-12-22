with Ada.Text_IO; use Ada.Text_IO;

procedure Conv is
   -- even though both are Float - they are separate types
   -- and cannot be assigned without explicit conversion
   type Meters is new Float;
   type Miles is new Float;

   function To_Miles (M : Meters) return Miles is
   begin
      -- conversion below
      return Miles(M) * 621.371e-6;
   end To_Miles;

   Dist_Imperial : Miles;
   Dist_Metric   : constant Meters := 1000.0;
begin
   Dist_Imperial := To_Miles (Dist_Metric);
   Put_Line (Miles'Image (Dist_Imperial));
end Conv;
