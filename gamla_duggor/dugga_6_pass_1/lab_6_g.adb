with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Lab_6_G is

--------------------
procedure Get_Word(File: in File_Type; Word: out String; WordLength: out Integer) is 
begin
   Get_Line(File, Word, WordLength);
   if WordLength = Word'Length then
      Skip_Line(File);
   end if;
end Get_Word;
-----------------------
function FloatFromWord(Word: in String; WordLength: in Integer) return Float is
LastSpace: Integer:= 1;
Total: Float := 0.0;
begin

    for J in 1..WordLength loop
        
        if  Word(J..J) = " " or J = Wordlength then
            Total:= Total +  Float'Value(Word(LastSpace..J));
            LastSpace:= J;
        end if;

    end loop;

    return Total;

end FloatFromWord;
--------------------

File: File_Type;
Sum: Float;
Word: String(1..20);
WordLength: Integer;

begin
    Open(File, In_File, "FLOATS.TXT");
    Sum:= 0.0;

    while not End_Of_File(File) loop
        Get_Word(File, Word, WordLength);
        Sum:= Sum + FloatFromWord(Word, WordLength);
    end loop;

    Close(File);

    Put("Summan av talen är: ");
    Put(Sum, 0, 2, 0);

    
end Lab_6_G;