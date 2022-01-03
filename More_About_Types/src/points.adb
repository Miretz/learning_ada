package body Points is
   procedure Print_Points(L : in out Point_Array) is
   begin
      for I in L'First .. L'Last loop
         Put_Line ("Point ("
                   & Integer'Image (L(I).X)
                   & ", "
                   & Integer'Image (L(I).Y)
                   & ")");
      end loop;
   end Print_Points;
end Points;
