with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Dugga_0 is

-- Variabler för Ålder, Årtal
-- + stödvariabler för GetLine: för, efter- och programnamn
Alder, Artal, E, F, P: Integer;

-- "... vi antar att inget namn är längre än 10 tecken"
Efternamn, Fornamn: String(1..11);

-- "... programmet du går är aldring längre än 50 tecken"
Program: String(1..50);

begin
Put("Mata in dit efternamn: ");
Get_Line(Efternamn, E);

Put("Mata in dit förnamn: ");
Get_Line(Fornamn, F);

Put("Mata in vilket år det är i år: ");
Get(Artal);

Put("Mata in din ålder och vilket program du går: ");
Get(Alder);
Get_Line(Program, P);

Put("Du heter ");
Put(Fornamn(1..F));
Put(" ");
Put(Efternamn(1..E));
Put("!");
New_Line;

Put("Trevligt att du går på programmet ");
Put("""");
Put(Program(2..P)); -- börjar på plats 2 för att hoppa första mellanslaget
Put("""");
Put(".");
New_Line;

Put("Du är född antingen år ");
Put(Artal - Alder, Width => 0);
Put(" eller ");
Put(Artal - Alder + 1, Width => 0);
Put(".");

end Dugga_0;