package Price_Handling is
   
   type Price_Type is private;
   procedure Put(Item: in Price_Type);

--    function "&"(Left: Price_Type; Right: in Float) return Price_Type;

private
    type Price_Type is
            record
            Kronor: Integer;
            Oren: Integer;
        end record;

end Price_Handling;