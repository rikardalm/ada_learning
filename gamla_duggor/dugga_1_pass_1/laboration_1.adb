with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Laboration_1 is

---------------------------------------------------------
procedure Inmatning(A, B: out Float) is
begin
    Put("Mata in de två temperaturerna: ");
    Get(A);
    Get(B);
end Inmatning;
---------------------------------------------------------
procedure Print(A, B: in Float) is
    
    Value: Float:= A;
    
    begin

    while (Value < (B-0.1)) loop
        Value:= Value+0.1;
        Put(Value, 0, 1, 0);
        Put(" ");
    end loop;
      
end Print;
---------------------------------------------------------
F1, F2: Float;

begin

Inmatning(F1, F2);
Print(F1, F2);

end Laboration_1;