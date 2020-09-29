with Ada.Text_IO; use Ada.Text_IO;

procedure Lab_3_G is

-- definiera fältdatatyp
type NameArray is array(1..4) of String(1..4);

-------------------------
procedure UserInput(A: out NameArray) is

begin
    Put("Mata in data: ");
    New_Line;   

    for I in 1..A'Length loop
        Get(A(I));
    end loop;
end UserInput;
-------------------------
procedure PrintResult(A: out NameArray) is

begin
    New_Line;   
    Put("Följande data finns i fältet: ");
    New_Line;

    for I in 1..A'Length loop
        Put(A(I));
        New_Line;
    end loop;


end PrintResult;
-------------------------

A : NameArray;

begin
    UserInput(A);
    PrintResult(A);
   
end Lab_3_G;