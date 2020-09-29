with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;


-- OBS!! DENNA UPPGIFT ÄR INTE LÖST!!

procedure Lab_2_VG is

-------------------------
-- function IntegerFromPosition(I, Start, Stop: in Integer) return Integer is

-- begin 
--     return Integer'Value(Integer'Image(I)(Start..Stop));
-- end IntegerFromPosition;
-------------------------
function ValidateUserInput(Year, Month, Day: in Integer) return Boolean is

InvalidYear, InvalidMonth, InvalidDay: Boolean := False;

begin 
    InvalidYear:= Year < 1900 or Year > 2099;
    InvalidMonth:= Month <= 0 or Month > 12;
    InvalidDay:= Day <= 0 or Day > 31;

    return InvalidYear and InvalidMonth and InvalidDay;

end ValidateUserInput;
-------------------------
procedure UserInput(Year, Month, Day: out Integer; FirstName: out String) is

YearStr: String(1..4);
MonthStr, DayStr: String(1..2);

Birthday: Integer:= 19980516;
Valid: Boolean:= False;

-- S : String := Integer'Image(19_980_516);


begin
    -- Put("Mata in förnamn: ");
    -- Get(FirstName);
    FirstName:= "abcd";

    -- while not Valid loop
        Put("Mata in födelsedatum: ");
        -- Get(Birthday);

        YearStr:= Integer'Image(Birthday)(1..5);
        MonthStr:= Integer'Image(Birthday)(1..5);
        DayStr:= Integer'Image(Birthday)(1..5);

        Year:=  Integer'Value(YearStr);
        Month:=  Integer'Value(YearStr);
        Day:=  Integer'Value(YearStr);
   

        -- Year:=  Integer'Value(YearStr);
        -- Year:=  0;
        -- Month:=  0;
        -- Day:=  0;

        New_Line;
        -- Put("DateStr: ");
        -- Put(S(1..4));
        New_Line;
        Put("ÅR: ");
        Put(Year, 0);
        New_Line;
        Put("MONTH: ");
        Put(Month, 0);
        New_Line;
        Put("DAY: ");
        Put(Day, 0);
        New_Line;

        -- if ValidateUserInput(Year, Month, Day) then
        --     Valid:= True;
        -- else 
        --     Put("FEL: Inte korrekt datum!");
        -- end if;

    -- end loop;

end UserInput;
-------------------------
procedure Print(Year, Month, Day: in Integer; FirstName: in String) is
begin
    Put("Texten blir: ");

   

end Print;
-------------------------


Year, Month, Day: Integer;
FirstName: String(1..6);

begin
    UserInput(Year, Month, Day, FirstName);
    -- Print(Year, Month, Day, FirstName);

end Lab_2_VG;