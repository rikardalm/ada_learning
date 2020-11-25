with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package body Price_Handling is
 
    procedure Put(Item: in Price_Type) is 
    begin
        Put(Item.Kronor, 0);
        Put(";");

        if Item.Oren = 0 then
            Put("-");
        else 
            Put(Item.Oren, 0);
        end if;

    end Put;

    function "-"(Left, Right: in Price_Type) return Price_Type is

    Kronor, Oren: Integer:= 0;
    P: Price_Type;

    begin
        Oren:= Left.Oren - Right.Oren;

        if Oren < 0 then
            Kronor:= -1;
            Oren:= 100 - Oren;
        end if;

        Kronor:= (Kronor + Left.Kronor) - Right.Kronor;

        if Kronor < 0 then
            raise Price_Underflow;
        end if;

        P.Kronor := Kronor;
        P.Oren := Oren;

        return P;
    end "-";


end Price_Handling;