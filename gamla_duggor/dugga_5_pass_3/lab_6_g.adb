with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Lab_6_G is

--------------------
procedure Get_Word(F: in File_Type; Word: out String; Word_Length: out integer) is 
begin
   Get_Line(F, Word, Word_Length);
   if Word_Length = Word'Length then
      Skip_Line(F);
   end if;
end Get_Word;
--------------------
function Word_Ends_With(Word: in String; Ch: in character) return Boolean is 
begin
   return Word(Word'last) = Ch;
end Word_Ends_With;
--------------------
function Word_Contains_Character(Word: in String; Ch: in character) return Boolean is 
begin

   for I in 1..Word'Length loop
      if Word(I) = Ch then 
         return True;
      end if;
   end loop;

   return False;
end Word_Contains_Character;
--------------------
procedure Print_Wordline(Number: in Integer; Word: in String) is
begin
   -- Put(Number, Width => 0);
   -- Put(". ");
   Put_Line(Word);
end Print_Wordline;
--------------------

F: File_Type;
Word: String(1..5);
Word_Length, Nr_Of_Words: Integer;

begin

   Open(F, In_File, "FIVEWORDS.TXT");

   Nr_Of_Words := 0;
   
   while not End_Of_File(F) loop
      Nr_Of_Words := Nr_Of_Words + 1;
      
      Get_Word(F, Word, Word_Length);
      
      if Word_Contains_Character(Word(1..Word_Length), 'O') then
	      Print_Wordline(Nr_Of_Words, Word(1..Word_Length));
      end if;

   end loop;

   Close(F);

end Lab_6_G;