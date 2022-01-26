with Interfaces.C; use Interfaces.C;

procedure Show_C_Struct is

   type c_struct is record
      a : int;
      b : long;
      c : unisgned;
      d : double;
   end record with
      Convention => C;

begin
   null;
end Show_C_Struct;
