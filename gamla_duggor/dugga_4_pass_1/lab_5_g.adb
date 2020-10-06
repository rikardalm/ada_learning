with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Lab_5_G is

------------------------
procedure RecursiveAddition(N: in Integer; I, Sum: in out Integer) is
begin
    if I >= N then
        Sum:= Sum + I;
        I:= I-1;
        RecursiveAddition(N, I, Sum);
    end if;
end RecursiveAddition;
------------------------

N: Integer:= 0;
I: Integer:= 50;
Sum: Integer:= 0;

begin
    Put("Mata in ett tal: ");
    Get(N);
    RecursiveAddition(N, I, Sum);
    Put("Summan blev: ");
    Put(Sum, 0);
end Lab_5_G;