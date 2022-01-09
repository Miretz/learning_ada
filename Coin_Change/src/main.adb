with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
   To_Convert : Integer;
   type Coin_Index is range 1 .. 6;
   Coins       : array (Coin_Index) of Integer;
   Coin_Counts : array (Coin_Index) of Integer;

   procedure Get_Initial_Value is
   begin
      Put ("Input the value to convert: ");
      Get (To_Convert);
      Put_Line ("The value to convert is " & Integer'Image (To_Convert));
      New_Line;
   end Get_Initial_Value;

   procedure Get_Coin_Values is
   begin
      Put_Line ("Input 6 coin values (from larger to smaller):");
      for C of Coins loop
         Put ("> ");
         Get (C);
      end loop;
      New_Line;
   end Get_Coin_Values;

   procedure Print_Coin_Values is
   begin
      Put ("The values of coins are: ");
      for C of Coins loop
         Put (Integer'Image (C));
      end loop;
      New_Line;
   end Print_Coin_Values;

   procedure Print_Coin_Counts is
   begin
      Put_Line ("The calculated counts are: ");
      for I in Coin_Index loop
         Put_Line
           (Integer'Image (Coins (I)) & " = " &
            Integer'Image (Coin_Counts (I)));
      end loop;
      New_Line;
   end Print_Coin_Counts;

   procedure Calculate_Coin_Counts is
   begin
      for I in Coin_Index loop
         Coin_Counts (I) := 0;
         while To_Convert >= (Coins (I)) loop
            Coin_Counts (I) := Coin_Counts (I) + 1;
            To_Convert      := To_Convert - Coins (I);
         end loop;
      end loop;
   end Calculate_Coin_Counts;

begin
   Get_Initial_Value;
   Get_Coin_Values;
   Print_Coin_Values;
   Calculate_Coin_Counts;
   Print_Coin_Counts;
end Main;
