with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Dugga_1_C is

    procedure Faktorisering(F1, F2:  in Integer; Sum: out Integer) is 


    begin
    Sum := 1;

        if(F1 < F2) then

            for I in F1..F2 loop
                Sum := Sum * I;

            end loop;

        else 

         for I in F1..F2 loop
                Sum := Sum * I;

            end loop;

        end if;

    end Faktorisering;


Faktor1, Faktor2, Produkt : Integer := 0;

begin

Put("Mata in två heltal: ");
Get(Faktor1);
Get(Faktor2);

Faktorisering(Faktor1, Faktor2, Produkt);
Put("Produkten av talen i intervallet [");

if(Faktor1 < Faktor2) then
    Put(Faktor1, Width => 0);
    Put(", ");
    Put(Faktor2, Width => 0);
else 
    Put(Faktor2, Width => 0);
    Put(", ");
    Put(Faktor1, Width => 0);
end if;

Put("] är ");
Put(Produkt, Width => 0);
Put(".");


end Dugga_1_C;