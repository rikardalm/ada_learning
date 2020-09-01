with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure lab_1_c is

-- declarations
PersonCount: Integer;
PersonIteration: Integer := 0;
Probability: Float;
ProbabilityFactor: Float;

begin
-- instructions
Put("Ange antal personer: ");
Get(PersonCount);

-- Skapa tabellens första rad
Put("Personer(n) | Sannolikhet(p)");
New_Line;

-- Kör loopen tills p > 0.5 
while Probability < 0.5 loop
    PersonIteration:= PersonIteration + 1;
    Put(PersonIteration, Width => 0);
   
    for J in 1..PersonIteration loop
        
        if(J = 1) then
            ProbabilityFactor:= 1.0;
        else 
            ProbabilityFactor:= ProbabilityFactor * (Float(365 - J) / 365.0);
        end if;

    end loop;

    Probability:=  1.0 - ProbabilityFactor;
    Put(Probability, Fore => 16, Aft => 4, Exp => 0);
    New_Line;
end loop;

Put("Lägsta n för p(n) > 0.5: ");
Put(PersonIteration, Width => 0);


end lab_1_c;