with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package body Space_Coordinate_Handling is

--------------------
procedure Get(Item: out Space_Coordinate_Type) is

Ch: Character;

begin
    --användaren matar in i följande format X, Y, Z
    Get(Item.X);
    Get(Ch);
    Get(Item.Y);
    Get(Ch);
    Get(Item.Z);

end Get;
--------------------
function "<"(Left, Right: in Space_Coordinate_Type) return Boolean is
begin
    return
    (abs(Left.X) + abs(Left.Y) + abs(Left.Z)) < 
    (abs(Right.X) + abs(Right.Y) + abs(Right.Z));
end "<";
--------------------

end Space_Coordinate_Handling;