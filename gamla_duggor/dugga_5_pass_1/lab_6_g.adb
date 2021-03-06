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
         LineCount:= LineCount + 1;

         ReadWord(File, Word, WordLength);

         Put("Line Count: ");
         Put(LineCount, 0);
         New_Line;

   end loop;

   Close(File);

end Lab_6_G;