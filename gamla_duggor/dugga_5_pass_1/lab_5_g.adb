with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure Lab_5_G is
-------------------------
procedure RecursiveMultiplication(A, B: in Integer; I, Sum: in out Integer) is
begin
  
    if I = A then
        Sum:= Sum * A;
        I:= I + 1;
        RecursiveMultiplication(A, B, I, Sum);
    elsif I = B then
        Sum:= Sum * B;
        I:= I + 1;
        RecursiveMultiplication(A, B, I, Sum);
    elsif I > A and I < B then
        Sum:= Sum * I;
        I:= I + 1;
        RecursiveMultiplication(A, B, I, Sum);
    end if;
       


end RecursiveMultiplication;
-------------------------

A, B: Integer;
I: Integer;
Sum: Integer := 1;

begin
    Put("Mata in A och B: ");
    Get(A);
    Get(B);
    I:= A;
    RecursiveMultiplication(A, B, I, Sum);
    Put("Produkten blev: ");
    Put(Sum, 0);
  
end Lab_5_G;