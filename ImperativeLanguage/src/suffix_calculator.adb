with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure suffix_calculator is
   A : Integer;
   B : Integer;
   OP : Character;
begin
   Put("Enter first value: ");
   Get(A);
   
   Put ("Enter second value: ");
   Get(B);
   
   Put ("Enter operation (+, -, * or /): ");
   Get(OP);
   
   case OP is
      when '+' => Put_Line("Result: " & Integer'Image(A + B));
      when '-' => Put_Line("Result: " & Integer'Image(A - B));
      when '*' => Put_Line("Result: " & Integer'Image(A * B));
      when '/' => Put_Line("Result: " & Integer'Image(A / B));
      when others => Put_Line("Invalid operation: " & OP);
   end case;
         
   
end suffix_calculator;
