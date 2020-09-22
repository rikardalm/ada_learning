-- with Ada.Float_Text_IO; use Ada.Float_Text_IO;
-- with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
-- with Ada.Text_IO; use Ada.Text_IO;

procedure Laboration_1 is

---------------------------------------------------------
function Double (I1: in Integer) return Integer is
begin
    return I1*2;
end Double;
---------------------------------------------------------
procedure Inmatning(A, B, C: out Integer) is
begin
    Put("Mata in tre heltal: ");
    Get(A);
    Get(B);
    Get(C);
end Inmatning;
---------------------------------------------------------
procedure Swap(A, B: in out Integer) is
    C: Integer;
    begin
        C:= A;
        A:= B;
        B:= C;
end Swap;
---------------------------------------------------------
procedure Print(A, B, C: in out Integer) is
    begin
        Put(A, Width => 0);
        Put(" < ");
        Put(B, Width => 0);
        Put(" < ");
        Put(C, Width => 0);
end Print;
---------------------------------------------------------
procedure PrintOffset(N: in out Integer) is
    begin
        for I in 1..N loop
           Put(" ");
        end loop;
end PrintOffset;
---------------------------------------------------------

-- C1: Character:= 'C';
-- F1: Float:= 0.0;
-- I1: Integer:= 0;
-- S1 : String(1..5);

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