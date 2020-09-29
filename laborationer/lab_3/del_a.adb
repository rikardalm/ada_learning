with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

-- börja med att bryta ner uppgiften i olika steg!
--
-- 1. Definiera en ny datatyp, Ten_Ints_Array_Type, datatypen skall vara ett 
-- fält med plats för 10 heltal
-- 
-- 2. Skapa sedan ett underprogram Get, som läser in till en parameter av
-- denna datatyp och ett underprogram Put som skriver ut fältet på skärmen.
-- 
-- 3. Låt huvudprogrammet testa dina underprogram, besvara frågan:
-- "Skall underprogrammen vara procedurer eller funktioner? Motivera!"
--
-- 4. Gör sedan ett underprogram Find_Maximum, som hittar det största heltalet i 
-- fältet och vilket index som värdet fanns på och returnerar dessa tal.
-- Skall underprogrammet vara en procedur eller en funktion?
--
-- 5. Gör även ett underprogram My_Reverse, som vänder ordningen på heltalen i fältet.
-- Skall underprogrammet vara en procedur eller en funktion?

procedure Del_A is

type Ten_Ints_Array_Type is array(1..10) of Integer;

-------------------------
procedure Find_Maximum(A: in Ten_Ints_Array_Type; HighestValue, Index: out Integer) is

begin
    HighestValue := 0;
    Index := 0;

    for I in 1..A'Length loop

        if (A(I) > HighestValue) then
            HighestValue:= A(I);
            Index:= I;
        end if;

    end loop;

end Find_Maximum;
-------------------------
procedure Get(A: out Ten_Ints_Array_Type) is
begin
    Put("Mata in 10 heltal: ");
    New_Line; -- valrfitt   

    for I in 1..A'Length loop
        Get(A(I));
    end loop;

end Get;
-------------------------
function My_Reverse(A: in Ten_Ints_Array_Type) return Ten_Ints_Array_Type is

-- För att kunna läsa och tilldela nya värden på ett fält krävs en till variabel.
-- I det här fallet skapar jag variabeln B, en tom array

B: Ten_Ints_Array_Type;

begin
    Put("Vänder på ordningen ..");
    New_Line;   

    for I in 1..A'Length loop
        B((A'Length +1)- I):= A(I);
    end loop;

    return B;

end My_Reverse;
-------------------------
procedure Put(A: in Ten_Ints_Array_Type) is

begin
    Put("Fältet och dess värden ser ut så här: ");
    New_Line;   

    for I in 1..A'Length loop
        Put("[");
        Put(I, 0);
        Put("] ");
        Put(A(I), 0);
        New_Line;   
    end loop;

end Put;
-------------------------

A: Ten_Ints_Array_Type;
HighestValue, Index: Integer;

begin
    Get(A);
    Put(A);

    Find_Maximum(A, HighestValue, Index);
   
    Put("Högsta värdet är: ");
    Put(HighestValue, 0);
    Put(" och finns på plats ");
    Put(Index, 0);
    New_Line;

    -- ersätter A med en omvänd ordning 
    A:= My_Reverse(A);
    Put(A);

end Del_A;