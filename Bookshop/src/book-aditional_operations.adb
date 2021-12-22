with Ada.Text_IO; use Ada.Text_IO;

package body Book.Aditional_Operations is

   -- private data
   Copies : Integer := 3;
   Book_Price : Integer := 20;
   Books_Sold : Integer := 0;
   Earnings : Integer := 0;

   function Get_Extended_Title return String is
   begin
      return "Book Title: " & Title;
   end Get_Extended_Title;

   function Get_Extended_Author return String is
   begin
      -- Author is not visible here as it's declared in
      -- the Book body
      -- However we can call the the Get_Author function
      -- from the Book's definition
      return "Book Author: " & Get_Author;
   end Get_Extended_Author;

   procedure Sell_Book is
   begin
      if Copies = 0 then
         Put_Line ("Error: Cannot sell. Out of stock.");
         return;
      end if;
      Copies := Copies - 1;
      Books_Sold := Books_Sold + 1;
      Earnings := Earnings + Book_Price;
      Put_Line ("Book sold.");
   end Sell_Book;

   procedure Refund_Book is
   begin
      if Books_Sold = 0 then
         Put_Line ("Error: Cannot refund. Book not from this store.");
         return;
      elsif Earnings < Book_Price then
         Put_Line ("Error: Cannot refund. Insufficient funds.");
         return;
      end if;
      Copies := Copies + 1;
      Books_Sold := Books_Sold - 1;
      Earnings := Earnings - Book_Price;
      Put_Line ("Book refunded.");
   end Refund_Book;

   procedure Print_Info is
   begin
      Put_Line ("------------------------------");
      Put_Line ("Copies available: " & Integer'Image(Copies));
      Put_Line ("Book price:       " & Integer'Image(Book_Price));
      Put_Line ("Books sold:       " & Integer'Image(Books_Sold));
      Put_Line ("Current earnings: " & Integer'Image(Earnings));
      Put_Line ("------------------------------");
   end Print_Info;

end Book.Aditional_Operations;
