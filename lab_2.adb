with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure lab_1 is

-- declarations
Price: Float := 10.0;
LastPrice: Float := 12.0;
Steps: Float := 0.3;
Moms: Float := 20.0;

begin

-- Samla inputs från användaren
Put("Första pris: ");
Get(Price);
Put("Sista pris: ");
Get(LastPrice);
Put("Steg: ");
Get(Steps);
Put("Momsprocent: ");
Get(Moms);

-- Omvanlda moms från procent till decimaltal
Moms:= Moms / 100.0;

-- Skapa tabellen
Put("=== Momstabell ===");
New_Line;
Put("Pris utan moms");
Put(" | Moms | ");
Put("Pris med moms");
New_Line;

-- Loopa fram till att slutpriset är större eller lika med första priset 
while LastPrice >= Price  loop
Put(Price);
Put(Price * Moms);
Put(Price + (Price * Moms));
New_Line;

-- Öka priset med det angivna "steg"
Price:= Price + Steps;

end loop;

end lab_1;