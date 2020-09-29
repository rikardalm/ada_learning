with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package body Date_Handling is

-------------------------
    procedure Get(Item: out Date_Type) is
        S: String(1..10);

        begin
            Get(S);
            Item.Year := Integer'Value(S(1..4)); 
            Item.Month := Integer'Value(S(6..7)); 
            Item.Day := Integer'Value(S(9..10)); 
    end Get;
-------------------------
    procedure Put(Item: in Date_Type) is
        begin
            Put(Item.Year, 0);
            Put("-");
            PutWithZero(Item.Month);
            Put("-");
            PutWithZero(Item.Day);
    end Put;

    function Next_Date(CurrentDate: in Date_Type) return Date_Type is
        
        NextDate: Date_Type := CurrentDate;
        
        begin
            -- kollar om det nya datumet överstiger månadens dagar
            if CurrentDate.Day + 1 > GetMonthDays(CurrentDate) then
                NextDate.Day:= 1; 
                NextDate.Month:= CurrentDate.Month + 1;

            -- kollar om det nya datumet överstiger årets månader
                if NextDate.Month > 12 then
                    NextDate.Month:= 1; 
                    NextDate.Year:= CurrentDate.Year + 1;
                end if; 
            
            else 
                NextDate.Day:= CurrentDate.Day + 1;
            end if;

            return NextDate;

    end Next_Date;
-------------------------
-- function Previous_Date(CurrentDate: in Date_Type) return Date_Type is
--         begin
-- end Previous_Date;

-------------------------
-- private subprograms
-------------------------
    procedure PutWithZero(I: in Integer) is

    begin
        if I < 10 then
            Put("0");
        end if;

        Put(I, 0);
       
    end PutWithZero;
-------------------------
    function GetMonthDays(D: in Date_Type) return Integer is

    begin
        if D.Month = 2 then
            return 28;
        elsif (D.Month = 4 or D.Month = 6 or D.Month = 9 or D.Month = 11) then
            return 30;
        end if;
    
        return 31;
    end GetMonthDays;
-------------------------

end Date_Handling;