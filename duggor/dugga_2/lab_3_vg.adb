with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Lab_3_VG is

-- definiera fältdatatyp
type Row is array(1..3) of Integer;
type Board is array(1..4) of Row;

-------------------------
function Summarize(A: in Board) return Integer is

Sum: Integer:= 0;

begin

      for I in 1..A'Length loop

        for J in 1..A(1)'Length loop
           Sum:= Sum + A(I)(J);
        end loop;

    end loop;

    return Sum;
end Summarize;
-------------------------
procedure UserInput(A: out Board) is

begin
    Put("Mata in data: ");
    New_Line;   

    for I in 1..A'Length loop

        for J in 1..A(1)'Length loop
            Get(A(I)(J));
        end loop;

    end loop;


end UserInput;
-------------------------
procedure PrintResult(Sum: in Integer) is

begin
    New_Line;   
    Put("Summan av alla tal blev: ");
    Put(Sum, 0);
end PrintResult;
-------------------------

A : Board;

begin
    UserInput(A);
    PrintResult(Summarize(A));
   
end Lab_3_VG;
