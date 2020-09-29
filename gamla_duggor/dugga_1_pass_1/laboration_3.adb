with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Laboration_3 is

type TalArray is array(3..12) of Float;

A: TalArray;

begin

Put("Mata in data: ");

for I in A'Range loop
   Get(A(I));
end loop;

for J in A'Range loop
   Put(A(J), 0, 1, 0);
   Put(" ");
end loop;

end Laboration_3;

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Array_Demo2 is

   type Row is array(1..3) of Integer;
   type Board_A is array(1..3) of Row;

   type Board_B is array(1..3,1..3) of Integer;

   A : Board_A;
   B : Board_B;

begin
   A(1)(1) := 2;
   B(1,1) := 2;
end Array_Demo2;