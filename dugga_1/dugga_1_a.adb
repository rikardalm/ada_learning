with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Dugga_1_A is

Antal: Integer;

begin

Put("Mata in antal: ");
Get(Antal);

    for I in 1..Antal loop

        if(I rem 2 = 0) then
            Put("o");
        else 
            Put("O");
        end if;

    end loop;

end Dugga_1_A;