with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Lab_2_VG is
-------------------------
procedure FetchYear(Year: out Integer) is

SpaceDummy: Character;
Suffix: String(1..5);
Value: Integer;

begin
    loop
        Put("Mata in ett år: ");
        Get(Value);
        Get(SpaceDummy);
        Get(Suffix);

        if (Value > 0 and (Suffix = "e.Kr." or Suffix = "f.Kr.")) then

            if Suffix = "e.Kr." then
                Year:= Value;
            else 
                Year:= Value * (-1);
            end if;

            exit;
        else 
            Put("Felaktigt år! ");
        end if;

    end loop;
    
end FetchYear;
-------------------------
function LeftYearIsLesser(Left, Right: in Integer) return Boolean is
begin
    return Left < Right;
end LeftYearIsLesser;
-------------------------
procedure PrintYearWithSuffix(Year: in Integer) is
begin 
    if Year > 0 then
        Put(Year, 0);
        Put(" e.Kr.");
    else 
        Put((Year * (-1)), 0);
        Put(" f.Kr.");
    end if;
    
end PrintYearWithSuffix;
-------------------------
procedure PrintResult(Y1, Y2: in Integer) is
begin 
    if LeftYearIsLesser(Y1, Y2) then
        Put("År ");
        PrintYearWithSuffix(Y1);
        Put(" är tidigare än ");
        PrintYearWithSuffix(Y2);
    else
        Put("År ");
        PrintYearWithSuffix(Y2);
        Put(" är tidigare än ");
        PrintYearWithSuffix(Y1);
    end if; 
    
end PrintResult;
-------------------------
Y1, Y2: Integer;

begin
    FetchYear(Y1);
    FetchYear(Y2);
    PrintResult(Y1,Y2);
end Lab_2_VG;