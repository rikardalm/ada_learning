with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Laboration_2 is

---------------------------------------------------------
function MiddleCheck(A, B, C: in Integer) return Boolean is
begin 
    return (A > B and A < C) or (A > C and A < B);
end MiddleCheck;
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
        A:= C;
        B:= A;
        C:= B;
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

A,B,C: Integer;

begin
Inmatning(A,B,C);

-- a är i mitten
if (MiddleCheck(A,B,C)) then
    if(C > B) then 
      Print(B,A,C);
    else 
      Print(C,A,B);
    end if;

-- b är i mitten
elsif (MiddleCheck(B,A,C)) then
    if(C > A) then 
      Print(A,B,C);
    else 
      Print(C,B,A);
    end if;

-- c är i mitten
else
    if(B > A) then 
      Print(A,C,B);
    else 
      Print(B,C,A);
    end if;
end if;


end Laboration_2;