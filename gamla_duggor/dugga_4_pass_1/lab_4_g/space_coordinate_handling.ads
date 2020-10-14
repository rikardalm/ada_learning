package Space_Coordinate_Handling is

type Space_Coordinate_Type is record
    X: Float;
    Y: Float;
    Z: Float;
end record;

procedure Get(Item: out Space_Coordinate_Type);

function "<"(Left, Right: in Space_Coordinate_Type) return Boolean;

end Space_Coordinate_Handling;