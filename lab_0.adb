with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure lab_0 is

C: Character;
I: Integer;
F: Float;
S: String(1..5);

begin

Put("Skriv in ett heltal: ");
Get(I);
Put("Du skrev in heltalet: ");
Put(I, Width => 0);
New_Line;

Put("Skriv fem heltal: ");
Get(I);
Put("Du skrev in talen: ");
Put(I, Width => 2);
for J in 1..4 loop
    Get(I);
    Put(I, Width => 2);
end loop;

Skip_Line;
New_Line;

Put("Skriv ett flyttal: ");
Get(F);
Put("Du skrev in flyttalet: ");
Put(F, Fore => 0, Aft => 2, Exp => 0);
New_Line;


Put("Skriv ett heltal och flyttal: ");
Get(I);
Get(F);
Put("Du skrev in heltalet: ");
Put(I, Width => 0);
New_Line;
Put("Du skrev in flyttalet: ");
Put(F, Fore => 0, Aft => 2, Exp => 0);
New_Line;

Put("Skriv ett tecken: ");
Get(C);
Put("Du skrev in tecknet: ");
Put(C);
New_Line;

Put("Skriv en sträng med 5 tecken: ");
Get(S(1..5));
Put("Du skrev in strängen: ");
Put(S);
New_Line;

Put("Skriv en sträng med 3 tecken: ");
Get(S(1..3));
Put("Du skrev in strängen: ");
Put(S);
New_Line;

Put("Skriv in ett heltal och en sträng med 5 tecken: ");
Get(I);
Get(S(1..5));
Put("Du skrev in talet |");
Put(I, Width => 0);
Put("| och strängen |");
Put(S);
Put("|");
New_Line;

Put("Skriv in en sträng med 3 tecken och ett flyttal: ");
Get(I);
Get(S(1..3));
Put("Du skrev """);
Put(F, Fore => 0, Aft => 5, Exp => 0);
Put("""");
Put("och """);
Put(S);
Put("""");


end lab_0;