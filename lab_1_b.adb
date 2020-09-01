with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure lab_1_b is

-- declarations
Year: Integer := 1976;
PopulationA: Float := 200.0;
PopulationB: Float := 100.0;
FactorA: Float := 0.1;
FactorB: Float := 0.5;

begin

-- Skapa tabellens första rad
Put("Årtal Ökning A Folkmängd A Ökning B Folkmängd B");
New_Line;

Put(Year, Width => 0);
Put("  ");
Put("--"); -- Put(FactorA);
Put(PopulationA, Fore => 10, Aft => 2, Exp => 0);
Put("       ");
Put("--"); -- Put(FactorB);
Put(PopulationB, Fore => 9, Aft => 2, Exp => 0);
New_Line;


-- Loopa fram till att slutpriset är större eller lika med första priset 
while PopulationA > PopulationB  loop

-- Öka årtalet
Year:= Year + 1;
Put(Year, Width => 0);

-- Folkmängd A 
Put((FactorA * PopulationA), Fore => 4, Aft => 2, Exp => 0);
PopulationA:= (FactorA * PopulationA) + PopulationA;
Put(PopulationA, Fore => 7, Aft => 2, Exp => 0);

-- Folkmängd B
Put((FactorB * PopulationB), Fore => 9, Aft => 2, Exp => 0);
PopulationB:= (FactorB * PopulationB) + PopulationB;
Put(PopulationB, Fore => 6, Aft => 2, Exp => 0);
New_Line;

end loop;

Put("År ");
Put(Year, Width => 0);
Put(" har land B gått om land A i befolkning.");

end lab_1_b;