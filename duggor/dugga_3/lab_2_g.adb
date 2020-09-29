with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Lab_2_G is
-------------------------
function CaluclateArea(B, H: in Integer) return Float is
begin
    return Float(B*H) / 2.0;
end CaluclateArea;
-------------------------
procedure UserInput(B, H, N: out Integer) is

begin
    Put("Mata in B och H: ");
    Get(B);
    Get(H);
    Put("Mata in N: ");
    Get(N);
end UserInput;
-------------------------
procedure PrintResult(Area: in Float; N: in Integer) is

Total: Float :=  Float(N) * Area;

begin 
    Put("Arean av ");
    Put(N, 0);
    Put("st sådana trianglar är ");
    Put(Total, 0, 1, 0);
    
end PrintResult;
-------------------------

B, H, N: Integer;

begin
    UserInput(B,H,N);
    PrintResult(CaluclateArea(B,H), N);
   
end Lab_2_G;