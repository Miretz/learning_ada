with Exceptions; use Exceptions;
with Open_File;
with Be_Careful;

procedure Main is
   Ada_Learning_Exception : exception;
begin

   -- raise My_Except;
   -- raise My_Except with "My exception message";

   -- Open_File;

   -- Be_Careful;

   -- Ada has a very small number of predefined exceptions

   -- raise Constraint_Error;
   -- Used for bounds violation, overflow, null derefrence, division by 0

   -- raise Program_Error;
   -- raised in more arcane situations, execution errors, etc.

   -- raise Storage_Error;
   -- memory issues, not enough memory, not enough stack

   -- raise Tasking_Error;
   -- task related errors

   -- You should always define your own exception objects

   raise Ada_Learning_Exception with "I'm still learning";

end Main;
