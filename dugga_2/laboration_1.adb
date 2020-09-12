-- with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Laboration_1 is
-- deklarationer

    procedure DoubleValue(I1: in Integer; I2: out Integer) is
    -- deklarationer

    begin
        I2:= I1 * 2;

    end DoubleValue;


    function Multiply (I1, I2: in Integer) return Integer is
    -- deklarationer

    begin
    -- instruktiooner
        return I1 * I2;
       
    end Multiply;


-- C1, C2, C3: Character:= 'C';
-- F1, F2, F3: Float:= 0.0;
I1, I2, I3: Integer:= 0;
-- S1, S2, S3 : String(1..5);

begin
-- instruktiooner
-- Put("Mata in ett heltal: ");
-- Get(I);

Put("Hello world!");
New_Line;

I1 := Multiply(3, 3);
Put(I1, Width => 0);
New_Line;

DoubleValue(10, I1);
Put(I1, Width => 0);

end Laboration_1;