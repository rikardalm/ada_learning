with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Price_Handling; use Price_Handling;

procedure Lab_4_VG is

P1, P2 : Price_Type;    -- En typ för att lagra ett pris
                        -- i hela kronor och ören
begin
    P1.Kronor:= 19;
    P1.Oren:= 50;
    P2 := (Kronor => 10, Oren => 0);
    Put("P1 är ");
    Put(P1);
    New_Line;
    Put("P2 är ");
    Put(P2);  -- Om örna är 0 så skall ";-" skrivas ut istället
    New_Line;

    Put("Om vi subtraherar P2 från P1 får vi ");
    Put(P1 - P2);
    New_Line;
    Put("Om vi subtraherar P1 från P2 får vi ");
    Put(P2 - P1);
    New_Line;

exception
    when Price_Underflow =>
        New_Line;
        Put_Line("Resultatet av en subtraktion blev negativ!");
end Lab_4_VG;