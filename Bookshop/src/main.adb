with Ada.Text_IO; use Ada.Text_IO;
with Book.Aditional_Operations; use Book.Aditional_Operations;

procedure Main is

begin
   Put_Line (Get_Extended_Title);
   Put_Line (Get_Extended_Author);

   Print_Info;
   Sell_Book;
   Print_Info;

   Refund_Book;
   Print_Info;

   Refund_Book;
   Print_Info;

   Sell_Book;
   Sell_Book;
   Sell_Book;
   Sell_Book;
   Refund_Book;
   Print_Info;

end Main;
