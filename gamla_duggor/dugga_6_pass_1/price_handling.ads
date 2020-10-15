package Price_Handling is
   
    type Price_Type is private;

    procedure Get(Item: out Price_Type);

    function "<"(Left, Right: in Price_Type) return Boolean;

    private

    type Price_Type is record
        Kronor: Integer;
        Oren: Integer;
    end record;

end Price_Handling;