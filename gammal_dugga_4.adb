with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Laboration_1 is

Heltal: Integer;
Summa: Integer:= 0;

begin
Put("Mata in ett heltal: ");
Get(Heltal);

for I in reverse 1..Heltal loop 

    -- utskrift
    Put(I, Width => 0);

    if(I > 1) then
        Put(" + ");
    end if;

    -- addition
    Summa:= Summa + I; 

end loop;

Put(" = ");
Put(Summa, Width => 0);

end Laboration_1;