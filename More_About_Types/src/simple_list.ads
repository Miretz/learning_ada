package Simple_List is
   type Node; -- incomplete type declaration

   type Node_Acc is access Node;

   type Node is record
      Content : Natural;
      Prev, Next : Node_Acc;
   end record;
end Simple_List;
