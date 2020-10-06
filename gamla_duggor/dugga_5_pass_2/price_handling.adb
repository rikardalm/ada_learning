-- with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package body Price_Handling is
   
    procedure Get(Item: out Price_Type) is

    Ch: Character;

    begin
        Get(Item.M);
        Get(Ch);
        Get(Item.N);

        if  Item.M < 0 or
            Item.N < 0 or
            Item.N >= 100 or
            Ch /= 'C' then
            
            raise Format_Error;
        end if;

    end Get;

end Price_Handling;