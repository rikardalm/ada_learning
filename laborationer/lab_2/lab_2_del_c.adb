with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Lab_2_Del_C is

-- procedurer för user inputs & print 
----------------------------------------------------------
    procedure Inmatning(T1, T2, S1, S2: out Float) is

    begin

        Put("Först kör vi sträckan S1 (i mil): ");
        Get(S1);
        Put("Vi tankar nu full tank, T1 (i liter): ");
        Get(T1);
        Put("Nu kör vi sträckan S2 (i mil): ");
        Get(S2);
        Put("Vi tankar nu full tank igen, T2 (i liter): ");
        Get(T2);
        
    end Inmatning;

    procedure Print(K, T0, S3: in Float) is

    begin

       Put("Bilen drar ");
       Put(K, 0, 2, 0);
       Put(" / mil.");
       New_Line;
       Put("Ur tanken skandes det från början ");
       Put(T0, 0, 2, 0);
       Put(" liter.");
       New_Line;
       Put("Vi kör sedan exakt ");
       Put(S3, 0, 2, 0);
       Put(" mil och lämnar bilen där! ");
       New_Line;
        
    end Print;
----------------------------------------------------------

-- funktioner som hanterar uträkningar
----------------------------------------------------------
function CalcK (T2, S2: in Float) return Float is
    begin
        return T2/S2;
end CalcK;

function CalcT0 (T1, S1, K: in Float) return Float is
    begin
        return  T1 - S1 * K;
end CalcT0;

function CalcS3 (T0, K: in Float) return Float is
    begin
        return  T0 / K;
end CalcS3;
----------------------------------------------------------

K, T0, T1, T2, S1, S2, S3: Float;

begin
    -- 1. samla värden
    Inmatning(T1, T2, S1, S2);

    -- 2. räkna ut värden med funktioner
    K:= CalcK(T2, S2);
    T0:= CalcT0(T1, S1, K);
    S3:= CalcS3(T0, K);

    -- 3. skriv ut resultatet
    Print(K, T0, S3);

    -- Motivering:
    -- Som underprogram kan både procedurer och funktioner uppnå det ösnkade resultatet
    -- för uppgiften, samt en kombination av de två. Jag anser att funktioner är bättre
    -- lämpade i det här scenariot då funktioner till skillnad från procedurer, alltid
    -- har ett returvärde av en datatyp och passar utmärkt utifrån uppgiftens beskrivning.
    -- Även genom nyttjandet av funktioner skapas struktur och tydlighet i koden
    -- samtidigt som det blir enklare att jobba "modulärt"


end Lab_2_Del_C;