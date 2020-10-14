with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package body Space_Coordinate_Handling is

--------------------
function Make_Coordinate(X, Y, Z: in Float) return Space_Coordinate_Type is

S: Space_Coordinate_Type;

begin
    S.X:= X;
    S.Y:= Y;
    S.Z:= Z;

    return S;
end Make_Coordinate;
--------------------
procedure Put(Item: in Space_Coordinate_Type; Width: in Integer) is 

begin
    PrintSpace(Width);
    Put(Item.X, 0, 1, 0);
    New_Line;
    PrintSpace(Width);
    Put(Item.Y, 0, 1, 0);
    New_Line;
    PrintSpace(Width);
    Put(Item.Z, 0, 1, 0);
    New_Line;
end Put;
--------------------
-- private
procedure PrintSpace (Width: in Integer) is 
begin
for I in 1..Width loop
   Put(" ");
end loop;
end PrintSpace;
--------------------

end Space_Coordinate_Handling;