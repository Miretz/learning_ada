with Variant_Records; use Variant_Records;
with Ada.Text_IO; use Ada.Text_IO;

procedure Test_Variant_Records_2 is
   function Eval_Expr (E : Expr) return Integer is
     (case E.Kind is
         when Bin_Op_Plus => Eval_Expr(E.Left.all) + Eval_Expr(E.Right.all),
         when Bin_Op_Minus => Eval_Expr(E.Left.all) - Eval_Expr(E.Right.all),
         when Num => E.Val);

   E : Expr := (Bin_Op_Plus,
                new Expr'(Bin_Op_Minus,
                  new Expr'(Num, 12),
                  new Expr'(Num, 15)),
                new Expr'(Num, 3));
begin
   Put_Line(Integer'Image(Eval_Expr(E)));
end Test_Variant_Records_2;
