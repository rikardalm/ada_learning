with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package body Price_Handling is

--  type Price_Type is 
--     record
--         Kronor: Integer;
--         Oren: Integer;
--     end record;

-------------------------
    procedure Put(Item: out Price_Type) is
    begin
        Put(Item.Kronor);
        Put("");

        if Item.Oren = 0 then
            Put("-");
        else
            Put(Item.Oren);
        end if;
        
    end Put;
-------------------------
    -- procedure "&"(Item: in Date_Type) return String
    --     begin
    --         Put(Item.Year, 0);
    --         Put("-");
    --         PutWithZero(Item.Month);
    --         Put("-");
    --         PutWithZero(Item.Day);
    -- end Put;
-------------------------

end Price_Handling;