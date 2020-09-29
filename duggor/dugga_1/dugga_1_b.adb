with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Dugga_1_B is

Heltal: Integer;

begin

Put("Mata in ett heltal: ");
Get(Heltal);

-- rita ut "taket"
    for I in 1..Heltal loop

        if(I = 1) then
            Put("+");
        end if;

        Put("-");

         if(I = Heltal) then
            Put("+");
        end if;

    end loop;

-- rita ut den vertikala linjen
    for I in 1..Heltal loop
        New_Line;
        Put(" "); -- alltid ett mellanrum för att ersätta första +

        -- skapa mellanrum baserat på antalet
        for I in 1..Heltal loop
            Put(" ");
        end loop;

        Put("|");

    end loop;

New_Line;
 -- förskjut golvet
    for I in 1..(Heltal + 1) loop
        Put(" ");
    end loop;

-- rita ut "golvet"
    for I in 1..Heltal loop

        if(I = 1) then
            Put("+");
        end if;

        Put("-");

         if(I = Heltal) then
            Put("+");
        end if;

    end loop;

end Dugga_1_B;