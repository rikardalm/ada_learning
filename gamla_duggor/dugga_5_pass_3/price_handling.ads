package Price_Handling is
 
type Price_Type is record
    M: Integer;
    N: Integer;
end record;

procedure Get(Item: out Price_Type);

Format_Error: exception;

end Price_Handling;