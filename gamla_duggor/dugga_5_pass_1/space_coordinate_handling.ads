package Space_Coordinate_Handling is

type Space_Coordinate_Type is record
    X: Float;
    Y: Float;
    Z: Float;
end record;

function Make_Coordinate(X, Y, Z: in Float) return Space_Coordinate_Type;

procedure Put(Item: in Space_Coordinate_Type; Width: in Integer);

private

procedure PrintSpace (Width: in Integer);

end Space_Coordinate_Handling;