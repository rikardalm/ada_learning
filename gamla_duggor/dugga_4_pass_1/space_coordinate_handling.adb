with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package body Space_Coordinate_Handling is

-------------------------
procedure Get(Item: out Space_Coordinate_Type) is
    Ch: Character;
begin
    Get(Item.X);
    Get(Ch);
    Get(Item.Y);
    Get(Ch);
    Get(Item.Z);

    if ValidCoordinates(Item) = False then
        raise Out_Of_Bounds_Exception;
    end if;

end Get;
-------------------------
function ValidCoordinates(Item: out Space_Coordinate_Type) return Boolean is
begin
    if abs(Item.X) > 1000.0 then
        return False;
    elsif abs(Item.Y) > 1000.0 then
        return False;
    elsif abs(Item.Z) > 1000.0 then
        return False;
    end if;

    return True;
       
end ValidCoordinates;
-------------------------

end Space_Coordinate_Handling;