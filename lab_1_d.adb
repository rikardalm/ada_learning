with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure lab_1_d is

-- declarations
WeekdayInput: Integer; -- användarens dag
MonthDayIndex: Integer := 0; -- räkningen som skriver ut siffror
TotalIterations: Integer; -- räkningen inklusive tomrum

begin
-- ge variablen värdet från användarens input
Put("Ange en veckodag (1-7): ");
Get(WeekdayInput);
New_Line;

-- skapa en variabel som avgör totala iterationer 
totalIterations:= WeekdayInput + 31;

-- skapa första raden
Put("Må Ti On To Fr Lö Sö");
New_Line;

for Index in 1..totalIterations loop

    -- skapa ett värde för varje lucka, antingen text eller mellanrum
    if(Index >= WeekdayInput and MonthDayIndex < 31) then
        MonthDayIndex:= MonthDayIndex + 1;
        Put(MonthDayIndex, Width => 2);
        Put(" ");
    else
        Put("   ");
    end if;

    -- skapa en ny rad för varje vecka
    if(Index rem 7 = 0) then
        New_Line;
    end if;

end loop;

end lab_1_d;