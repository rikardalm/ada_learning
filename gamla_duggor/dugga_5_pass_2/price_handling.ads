package Price_Handling is
   
    type Price_Type is private;

    procedure Get(Item: out Price_Type);

    Format_Error: exception;

private

    type Price_Type is record
        M: Integer;
        N: Integer;
    end record;

end Price_Handling;