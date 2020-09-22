with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Laboration_2_G is

---------------------------------------------------------
procedure Inmatning(A, B: out Integer) is
begin
    Put("Mata in de två heltal: ");
    Get(A);
    Get(B);
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
function SummarizeBetween (I1, I2: in Integer) return Integer is

Sum: Integer:= 0; 

begin
       for I in I1..I2 loop
            Sum:= Sum + I;
        end loop;
 
    return Sum;
end SummarizeBetween;
---------------------------------------------------------
I1, I2: Integer;

begin

Inmatning(I1, I2);

if(I1 > I2) then
    Swap(I1, I2);
end if;

Put("Summan av talen i intervallen: ");
Put("[");
Put(I1, 0);
Put(", ");
Put(I2, 0);
Put("] är ");
Put(SummarizeBetween(I1, I2), 0);
Put(".");

end Laboration_2_G;