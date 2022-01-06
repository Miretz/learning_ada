with Variant_Records; use Variant_Records;

procedure Test_Variant_Records is
   E : Expr := (Num, 12);
   G : Expr := (Bin_Op_Minus, new Expr'(Num, 10), new Expr'(Num, 10));
begin
   -- The below wil compile but fail at runtime
   -- E.Left := new Expr'(Num, 15);
   G.Left := new Expr'(Num, 20);
end Test_Variant_Records;
