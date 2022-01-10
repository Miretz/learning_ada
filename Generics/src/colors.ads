with Generic_Swap;
with Generic_Reverse;

package Colors is
   type Color is (Black, Red, Green, Blue, White);

   -- non-generic concrete procedure
   procedure Swap_Colors (X, Y : in out Color);

   -- generic swap procedure used for Color type
   procedure Swap_Colors_Generic is new Generic_Swap (T => Color);

   type Color_Array is array (Integer range <>) of Color;

   procedure Reverse_It is new Generic_Reverse
     (T => Color, Index => Integer, Array_T => Color_Array);

end Colors;
