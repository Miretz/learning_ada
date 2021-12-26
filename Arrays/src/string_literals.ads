package String_Literals is
   -- these two are the same
   A : String(1..11) := "Hello World";
   B : String(1..11) := ('H','e','l','l','o',' ',
                        'W','o','r','l','d');
end String_Literals;
