with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Lab_2_G is

-------------------------
procedure UserInput(I: out Integer; S: out String) is

Space: Character;

begin
    Put("Mata in ett heltal och en sträng med exakt 3 tecken: ");
    Get(I);
    Get(Space);
    Get(S);
end UserInput;
-------------------------
procedure Print(I: in Integer; S: in String) is
begin
    New_Line;
    Put("Texten blir: ");

    for J in 1..I loop
        Put(S);
    end loop;

end Print;
-------------------------

I: Integer;
S: String(1..3);

begin
    UserInput(I,S);
    Print(I,S);
end Lab_2_G;