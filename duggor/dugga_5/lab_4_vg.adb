with Ada.Text_IO; use Ada.Text_IO;
with Reg_Plate_Handling; use Reg_Plate_Handling;

procedure Lab_4_VG is

    R : Reg_Plate_Type;  -- En typ för att lagra ett registrerings-
                         -- nummer för en bil. Har Tre tecken och
                         -- ett (tresiffrigt) heltal.
  begin
    R.Letters := "KPY";
    R.Numbers := 038;
    Put("R är ");
    Put(R);
    New_Line;
    Put("Nästa registreringsnummer är ");
    Put(Next_Plate(R));

  end Lab_4_VG;