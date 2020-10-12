with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Price_Handling is
 
procedure Get(Item: out Price_Type) is 

C: Character;

begin
    Get(Item.M);
    Get(C);
    Get(Item.N);

    if 
        C /= ';' or
        Item.M < 0 or 
        Item.N < 0 or
        Item.N > 100 then

        raise Format_Error;

    end if;

end Get;

end Price_Handling;