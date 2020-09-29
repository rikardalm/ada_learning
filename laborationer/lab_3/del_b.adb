with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

-- börja med att bryta ner uppgiften i olika steg!
--
-- 1.I denna uppgift skall du definiera datatypen String_Type, som skall klara av att lagra text. En
-- String_Type skall innehålla två delvariabler, Char_Array ett fält med 256 tecken, och ett heltal
-- Length som talar om hur mycket av fältet som används för tillfället. String_Type kommer endast
-- kunna hantera textsnuttar som är mindre än eller precis 256 tecken. Observera att String_Type är
-- något helt separat från String som redan finns definierat i Ada.

-- 2. Du skall nu skapa ett underprogram Get som kan läsa in till din String_Type. Underprogrammet
-- skall läsa in tecken för tecken och lagra dessa i parametern tills antingen 256 tecken har lästs in,
-- eller man stöter på ett enter-tecken i tangentbordsbufferten. Man kan kolla om det ligger ett entertecken i bufferten med funtkionen End_Of_Line, som returnerar sant eller falskt.

-- 3. Skapa sedan ett underprogram Put som skriver ut din String_Type på skärmen.

-- 4. Till sist skall du även skapa en jämförelseoperator "=", så att man kan jämföra om två variabler av
-- typen String_Type är lika. Tänk till här så att du bara jämför de delar av variablerna som är
-- relevanta.

-- 5. Självklart gör du även ett huvudprogram som testar dina underprogram

procedure Del_B is

type Char_Array_Type is array(1..256) of Character;

type String_Type is
        record
        Char_Array: Char_Array_Type;
        Length: Integer;
    end record;

-------------------------
procedure Get(S: out String_Type) is 

begin
    S.Length:= 0; -- nollställ för att vilkor i loopen

    Put("Mata in tecken: ");
    while not End_Of_Line and S.Length < 256 loop

        Get(S.Char_Array(S.Length + 1));
        S.Length:= S.Length + 1;
    
    end loop;

end Get;
-------------------------
procedure Put(S: in String_Type) is 

begin
    New_Line;
    Put("   Length: ");
    Put(S.Length, 0);
    New_Line;
    Put("   Char_Array: ");

    for I in 1..S.Length loop
        Put(S.Char_Array(I));
    end loop;
end Put;
-------------------------
function "=" (Left, Right: in String_Type) return Boolean is

begin
    if Left.Length = Right.Length then
        for I in 1..Left.Length loop

            if Left.Char_Array(I) /= Right.Char_Array(I) then
                return False;
            end if;
        end loop;

        return True;
    end if;

    return False;

end "=";
-------------------------

S1, S2: String_Type;

begin
    -- OBS! pga nyttjandet av End_Of_Line i inmatningen går det ej att köra dubbla
    -- inmatningar, men det är inte ett krav för uppgiften :-) 


    -- tilldela värdet för S1 och kopiera värdet till S2
    Get(S1);
    S2:= S1;

    Put("Post 1:");
    Put(S1);
    New_Line;

    -- ta bort kommentarer för att testa jämförelsefunktionen
    -- S2.Length:= -1;
    -- S2.Char_Array(1):= '@';

    Put("Post 2:");
    Put(S2);
    New_Line;

    -- jämför posterna
    if S1 = S2 then
        Put("Posterna är identiska");
    else 
        Put("Posterna är inte identiska");
    end if;

end Del_B;