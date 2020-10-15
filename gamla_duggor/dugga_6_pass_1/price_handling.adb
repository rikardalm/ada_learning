with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Price_Handling is
-------------------------
procedure Get(Item: out Price_Type) is 
Ch: Character;
begin
    Get(Item.Kronor);
    Get(Ch);
    Get(Item.Oren);
end Get;
-------------------------
function "<"(Left, Right: in Price_Type) return Boolean is 
begin 
    return (Left.Kronor + (Left.Oren / 100)) < (Right.Kronor + (Right.Oren / 100));
end "<";
-------------------------

end Price_Handling;