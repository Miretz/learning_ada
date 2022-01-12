with Ada.Text_IO;    use Ada.Text_IO;
with Ada.Exceptions; use Ada.Exceptions;

-- example of handling an exception

procedure Open_File is
   File : File_Type;
begin

   -- separate block, can also be merged with the parent block
   begin
      Open (File, In_File, "input.txt");
   exception
      when E : Name_Error =>
         Put ("Cannot open input file: ");
         Put_Line (Exception_Message (E));
         raise; -- re-raise the current exception
   end;

end Open_File;
