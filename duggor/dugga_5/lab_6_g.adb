with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
-- with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Lab_6_G is

--------------------
procedure Get_Word(F: in File_Type; Word: out String; WordLength: out Integer) is 
begin

   Get_Line(F, Word, WordLength);

   -- vid tom rad kommer if-satsen hindra 'END_ERROR'
   if WordLength = Word'Length then
      Skip_Line(F);
   end if;

end Get_Word;
--------------------
function Word_Ends_With(Word: in String; Ch: in character) return Boolean is 
begin
   return Word(Word'last) = Ch;
end Word_Ends_With;
--------------------
procedure Print_Wordline(Number: in Integer; Word: in String) is
begin
   Put(Number, Width => 0);
   Put(". ");
   Put_Line(Word);
end Print_Wordline;
--------------------

F: File_Type;
Word: String(1..8);
WordLength, WordCount: Integer;

begin

    -- Öppna filen
    Open(F, In_File, "LINEWORDS.TXT");

    -- Nollställ variabeln för ordräkning
    WordCount:= 0;

    -- Loopa filens rader
    while not End_Of_File(F) loop
        -- öka ordräkningen med 1
        WordCount:= WordCount + 1;
        
        -- läser en rad från filen, tilldelar ett värde för 'Word' och 'WordLength'
        -- OBS! detta anrop kommer eventuellt stoppa loopen 
        Get_Word(F, Word, WordLength);
        
        -- kollar om ordet slutar med ett tecken
        if Word_Ends_With(Word(1..WordLength), 'S') then
            Print_Wordline(WordCount, Word(1..WordLength));
        end if;

    end loop;

    Close(F);

end Lab_6_G;