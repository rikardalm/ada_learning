with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package body Reg_Plate_Handling is

-------------------------
procedure Put(Item: in Reg_Plate_Type) is 
begin
    Put(Item.Letters);
    Put("-");
    
    if Item.Numbers < 10 then
       Put("00");
    elsif Item.Numbers < 100 then
       Put("0");
    end if;

    Put(Item.Numbers, 0);

end Put;
-------------------------
function Next_Plate(Item: in Reg_Plate_Type) return Reg_Plate_Type is

NextPlate: Reg_Plate_Type;

begin
    -- tilldela befintligt värde till NextPlate
    NextPlate := Item;

    if Item.Numbers = 999 then

        if Item.Letters /= "ZZZ" then
            NextPlate.Numbers := 000;
        end if;

        NextPlate.Letters := IncrementLetters(NextPlate.Letters);
    else 
        NextPlate.Numbers:=  NextPlate.Numbers + 1;
    end if;


return NextPlate;

end Next_Plate;
-------------------------
-- private
function IncrementLetters(Letters: in String) return String is

    I1, I2, I3: Integer;
    NewLetters: String(1..3);

    begin

    I1:= Character'Pos(Letters(Letters'First)); 
    I2:= Character'Pos(Letters(Letters'First + 1)); 
    I3:= Character'Pos(Letters(Letters'First + 2)); 
    
    -- Om a och 
    if I1 + I2 + I3 = 270 then
        return Letters;
    elsif I2 + I3 = 180 then
        I3:= 65; -- tilldelas A
        I2:= 65; -- tilldelas A
        I1:= I1 + 1;    
    elsif I3 = 90 then
        I3:= 65; -- tilldelas A
        I2:= I2 + 1;
    else 
        I3:= I3 + 1;
    end if;

    NewLetters(1):=  Character'Val(I1);
    NewLetters(2):=  Character'Val(I2);
    NewLetters(3):=  Character'Val(I3);

    return NewLetters;

    end IncrementLetters;


end Reg_Plate_Handling;