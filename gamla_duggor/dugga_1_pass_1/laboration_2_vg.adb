with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Laboration_2_VG is

---------------------------------------------------------
procedure Inmatning(A: out Integer; B: out Float) is
begin
    Put("Mata in antal år: ");
    Get(A);
    Put("Mata in mängd uran: ");
    Get(B);
end Inmatning;
---------------------------------------------------------
procedure Print(Years: in Integer; Uran: in out Float) is

YearCounter: Integer := 0;

begin
    Put("    År    Uran Kvar");
    New_Line;
    Put("-------------------");
    New_Line;

    while (Years > YearCounter) loop
        Uran:= Uran / 2.0;
        YearCounter:= YearCounter + 50;

        Put(YearCounter, Width => 6);
        Put(Uran, Fore => 9, Aft => 3, Exp => 0);
        New_Line;
    end loop;

end Print;
---------------------------------------------------------

Years: Integer;
Uran: Float;

begin

Inmatning(Years, Uran);
Print(Years, Uran);

end Laboration_2_VG;