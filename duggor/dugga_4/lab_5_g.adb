with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Lab_5_G is

procedure Calculate(N: in Integer; I, Sum: in out Integer) is
begin

    if N >= I then
        Sum:= Sum * I;
        I:= I + 1;
        Calculate(N, I, Sum);
    end if;

end Calculate;

    N: Integer;
    I: Integer:= -10;
    Sum: Integer:= 1;

begin
    Put("Mata in ett tal: ");
    Get(N);
    Calculate(N, I, Sum);
    Put("Produkten blev: ");
    Put(Sum, 0);
    
end Lab_5_G;