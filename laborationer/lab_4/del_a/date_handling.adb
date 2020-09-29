with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package body Date_Handling is

-------------------------
    procedure Get(Item: out Date_Type) is
        S: String(1..10);

        begin
            Get(S);
            Item.Year := Integer'Value(S(1..4)); 
            Item.Month := Integer'Value(S(6..7)); 
            Item.Day := Integer'Value(S(9..10)); 
    end Get;
-------------------------
    procedure Put(Item: in Date_Type) is
        begin
            Put(Item.Year, 0);
            Put("-");
            PutWithZero(Item.Month);
            Put("-");
            PutWithZero(Item.Day);
    end Put;
-------------------------
-- private subprograms
-------------------------
    procedure PutWithZero(I: in Integer) is

    begin
        if I < 10 then
            Put("0");
        end if;

        Put(I, 0);
       
    end PutWithZero;

end Date_Handling;