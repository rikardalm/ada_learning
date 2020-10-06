with Ada.Text_IO; use Ada.Text_IO;
with Space_Coordinate_Handling; use Space_Coordinate_Handling;

procedure Lab_4_VG is

C1 : Space_Coordinate_Type;  -- Typ för att lagra en punkt i rymden.
begin
    Put("Mata in en punkt i rymden: ");
    Get(C1);  -- Inmatningsformat (X, Y, Z) där X, Y och Z är flyttal
    Put_Line("Punkten ligger innanför godkända intervall.");

exception
    when Out_Of_Bounds_Exception =>
        Put_Line("Punkten ligger utanför det godkända intervallet!");

end Lab_4_VG;