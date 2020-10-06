package Space_Coordinate_Handling is

type Space_Coordinate_Type is private;

procedure Get(Item: out Space_Coordinate_Type);

Out_Of_Bounds_Exception : exception;

private
    type Space_Coordinate_Type is record
        X: Float;
        Y: Float;
        Z: Float;
    end record;

    function ValidCoordinates(Item: out Space_Coordinate_Type) return Boolean;

end Space_Coordinate_Handling;