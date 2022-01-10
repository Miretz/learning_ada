with Generic_Swap;

package Colors is
   type Color is (Black, Red, Green, Blue, White);

   -- non-generic concrete procedure
   procedure Swap_Colors (X, Y : in out Color);

   -- generic swap procedure used for Color type
   procedure Swap_Colors_Generic is new Generic_Swap (T => Color);
end Colors;
