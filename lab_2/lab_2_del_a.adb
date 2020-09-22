with Ada.Float_Text_IO; use Ada.Float_Text_IO;
-- with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Lab_2_Del_A is


    procedure InputMedValidering(MinValue: in Float; Value: out Float) is

    Valid: boolean:= False;

    begin

        while (Valid = False) loop
            
            Get(Value);

            if (Value <= 0.0) then
                Put("Inmatningen är felaktig. Försök igen.");
                New_Line;
            elsif (Value < MinValue)  then
                Put("Värdet måste vara större än ");
                -- Put(MinValue, Fore => 0, After => 0, Exp => 0);
                Put(MinValue, Fore => 0, Aft => 0, Exp => 0);

                Put(". Försök igen.");
                New_Line;
            else 
                Valid:= True;
            end if;

        end loop;
        
    end InputMedValidering;

    procedure Inmatning(Pris1, Pris2, Steg, Moms: out Float) is

    begin
        Put("Första pris: ");
        InputMedValidering(0.0, Pris1);
        Put("Sista pris: ");
        InputMedValidering(Pris1, Pris2);
        Put("Steg: ");
        InputMedValidering(0.0, Steg);
        Put("Momsprocent: ");
        InputMedValidering(0.0, Moms);
        New_Line;

        -- omvandla moms från procent till decimal
        Moms:= Moms / 100.0;
        
    end Inmatning;

    procedure TabellPrint(Pris1, Pris2, Steg, Moms: in out Float) is

    begin

        -- Skapa tabellen
        Put("=== Momstabell ===");
        New_Line;
        Put("Pris utan moms");
        Put(" | Moms | ");
        Put("Pris med moms");
        New_Line;

        -- Loopa fram till att slutpriset är större eller lika med första priset 
        while Pris2 >= Pris1 loop

            Put(Pris1, Fore => 0, Aft => 2, Exp => 0);
            Put((Pris1 * Moms), Fore => 13, Aft => 2, Exp => 0);
            Put((Pris1 + (Pris1 * Moms)), Fore => 5, Aft => 2, Exp => 0);
            New_Line;

            -- Öka priset med det angivna "steg"
            Pris1:= Pris1 + Steg;

        end loop;
      
        
    end TabellPrint;

Pris1, Pris2, Steg, Moms: Float;

begin
-- skriv ut tabellen
Inmatning(Pris1, Pris2, Steg, Moms);
TabellPrint(Pris1, Pris2, Steg, Moms);

end Lab_2_Del_A;