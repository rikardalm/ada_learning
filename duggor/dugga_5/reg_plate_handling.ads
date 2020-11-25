package Reg_Plate_Handling is

type Reg_Plate_Type is record
    Letters: String(1..3);
    Numbers: Integer;
end record;

procedure Put(Item: in Reg_Plate_Type);

function Next_Plate(Item: in Reg_Plate_Type) return Reg_Plate_Type;

private

function IncrementLetters(Letters: in String) return String;

end Reg_Plate_Handling;