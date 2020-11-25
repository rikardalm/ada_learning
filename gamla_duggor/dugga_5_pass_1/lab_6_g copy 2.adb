with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Lab_6_G is


-------------------------
procedure ReadWord(File: in File_Type; Word: out String; WordLength: out Integer) is
begin
   Get_Line(File, Word, WordLength);

   if WordLength = Word'Length then
      Skip_Line;   
   end if;
   
end ReadWord;
-------------------------
procedure Get_Word(F: in File_Type; Word: out String; WordLength: out Integer) is 
begin

   Get_Line(F, Word, WordLength);

   -- vid tom rad kommer if-satsen hindra 'END_ERROR'
   if WordLength = Word'Length then
      Skip_Line(F);
   end if;

end Get_Word;
--------------------
-------------------------
function WordEndsWithChar(Char: in Character; Word: in String) return Boolean is
begin
   return Word(Word'last) = Char;
end WordEndsWithChar;
-------------------------
procedure PrintWord(Word: in String; LineCount, WordLength: in Integer) is
begin
      Put(LineCount, 0);
      Put(". ");
      Put_Line(Word);
end PrintWord;
-------------------------

File: File_Type;
LineCount, WordLength: Integer;
Word: String(1..8);

begin
   Open(File, In_File, "LINEWORDS.TXT");

   LineCount:= 0;

   while not End_Of_File(File) loop
      -- while not End_Of_Line(File) loop
      
         LineCount:= LineCount + 1;

         Get_Word(File, Word, WordLength);

            -- if WordEndsWithChar('S', Word(1..WordLength)) then 
            --    PrintWord(Word(1..WordLength), LineCount, WordLength);
            -- end if; 

            -- Put("Linecount: ");
            -- Put(LineCount, 0);
            -- New_Line;

      -- end loop;
   end loop;

   Close(File);

end Lab_6_G;