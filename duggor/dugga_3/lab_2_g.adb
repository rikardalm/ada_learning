-- with Ada.Text_IO; use Ada.Text_IO;
procedure Lab_2_G is

--------------------
function Put(B: in Boolean) return Boolean is

begin 
    if B then
        Put("SANT");
    else 
        Put("FALKST");
    end if;

    return B;

end Put;
--------------------
procedure Put_Line(B: in Boolean) is

begin 
    if B then
        Put("SANT");
    else 
        Put("FALKST");
    end if;

    New_Line;

end Put_Line;
--------------------
B1 : Boolean := True;
B2 : Boolean := False;

begin
    Put(B1);
    Put_Line(B2);
    Put(False);

end Lab_2_G;