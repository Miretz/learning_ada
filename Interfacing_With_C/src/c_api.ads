with Interfaces.C; use Interfaces.C;

package C_API is

   function My_Func (a : int) return int with
      Export        => True,
      Convention    => C,
      External_Name => "my_func_ada";

end C_API;
