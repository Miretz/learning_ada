with Ada.Text_IO; use Ada.Text_IO;
with Simple_List; use Simple_List;

procedure Simple_List_Example is
   N1, N2, N3, N4, N : Node_Acc;
begin

   -- construct the linked list
   N4 := new Node'(42, N3, null);
   N3 := new Node'(3, N2, N4);
   N2 := new Node'(2, N1, N3);
   N1 := new Node'(1, null, N2);
   N := N1;

   Put_Line ("Simple list example");
   while N /= null loop
      Put_Line (Integer'Image(N.Content));
      N := N.Next;
   end loop;
end Simple_List_Example;
