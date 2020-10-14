
with Ada.Text_IO;                use Ada.Text_IO;
with Space_Coordinate_Handling;  use Space_Coordinate_Handling;
procedure Lab_4_G is

C1, C2 : Space_Coordinate_Type;  -- En typ för att lagra en punkt
                                    -- i rymden.
begin
    C1 := Make_Coordinate(3.0, -5.5, 14.44);
    C2 := Make_Coordinate(-3.5, 0.5, -10.0);

    Put_Line("Första punkten: ");
    Put(C1, Width => 0); -- Skriver ut X, Y, Z över tre rader

    Put_Line("Andra punkten: ");
    Put(C2, Width => 10);
end Lab_4_G;