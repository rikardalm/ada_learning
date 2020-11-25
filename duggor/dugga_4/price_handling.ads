with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package Price_Handling is

    -- type Price_Type is private;

    type Price_Type is record
        Kronor: Integer;
        Oren: Integer;
    end record;

    procedure Put(Item: in Price_Type);

    function "-"(Left, Right: in Price_Type) return Price_Type;

    Price_Underflow: exception;

-- private

--     type Price_Type is record
--         Kronor: Integer;
--         Oren: Integer;
--     end record;

end Price_Handling;