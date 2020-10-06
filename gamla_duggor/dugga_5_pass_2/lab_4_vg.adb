with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Price_Handling; use Price_Handling;

  procedure Lab_4_VG is

    P : Price_Type;  -- En typ för att lagra ett pris
                     -- i hela kronor och ören
  begin
    Put("Mata in ett pris: ");
    Get(P);   -- Inmatningsformat M;NN där M är ett positivt heltal
              -- (godtyckligt stort) som motsvarar hela kronor och
              -- N motsvarar ören (endast två siffror).
    Put_Line("Inmatningen OK.");
  exception
    when Format_Error =>
      Put_Line("Ogiltigt format för priset!");
      
  end Lab_4_VG;