with Ada.Text_IO; use Ada.Text_IO;

procedure Lab_3_G is

-- definiera fältdatatyp
type Char_Array is array(1..5) of Character;

-------------------------
procedure Inmatning(A: out Char_Array) is

begin
    Put("Mata in data: ");
    for I in 1..A'Length loop
        Get(A(I));
    end loop;
end Inmatning;
-------------------------
procedure Print(A: in Char_Array) is

begin
    Put("Följande data finns i fältet: ");
    for I in 1..A'Length loop
        Put(A(I));
    end loop;
end Print;
-------------------------

A : Char_Array;

begin
    Inmatning(A);
    Print(A);
end Lab_3_G;