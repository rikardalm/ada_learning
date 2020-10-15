with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Lab_6_G is

-------------------------
procedure Get_Word(File: in File_Type; Word: out String; WordLength: out Integer) is 
begin
   Get_Line(File, Word, WordLength);
   if WordLength = Word'Length then
      Skip_Line(File);
   end if;
end Get_Word;
-------------------------
function StringIsNotSpace(Str: String) return Boolean is
begin
    return Str /= " ";
end StringIsNotSpace;

-------------------------
procedure PrintIntegers(Word: in String; WordLength: in Integer) is

SkipNext: Boolean:= True;
-- ComboCount: Integer;

begin
    for J in 1..WordLength loop

        if SkipNext then
            SkipNext:= False;
        elsif StringIsNotSpace(Word(J..J)) then

                if J /= WordLength and StringIsNotSpace(Word(J+1..J+1)) then
                    Put(Integer'Value(Word(J..J+1)), 6);
                    New_Line;
                    SkipNext:= True;
                    -- Put("Hello world!");
                else
                    Put(Integer'Value(Word(J..J)), 6);
                    New_Line;
                end if;

        end if;


    end loop;

end PrintIntegers;
-------------------------
File: File_Type;
Word: String(1..20);
WordLength: Integer;

begin
    Open(File, In_File, "INTEGERS.TXT");

    Put("Alla talen i filen: ");
    New_Line;

    while not End_Of_File(File) loop
        Get_Word(File, Word, WordLength);
        PrintIntegers(Word, WordLength);
    end loop;

    Close(File);
    
end Lab_6_G;