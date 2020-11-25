  with Ada.Text_IO;                use Ada.Text_IO;
  with Price_Handling;             use Price_Handling;

  procedure Lab_4_VG is

    P1, P2 : Price_Type;  -- En typ fÃ¶r att lagra ett pris
                          -- i hela kronor och Ã¶ren
  begin
    P1.Kronor := 199;
    P1.Oren   := 50;
    P2 := (Kronor => 10, Oren => 0);
    Put("P1 Ã¤r ");
    Put(P1);
    New_Line;
    Put("P2 Ã¤r ");
    Put(P2);  -- Om Ã¶rena Ã¤r 0 sÃ¥ skall ";-" skrivas ut istÃ¤llet
    New_Line;

    -- Put("10 procent rabatt pÃ¥ P1 Ã¤r ");
    -- Put(P1 & 10.0);
    -- New_Line;
    -- Put("50 procent rabatt pÃ¥ P2 Ã¤r ");
    -- Put(P2 & 50.0);
    -- New_Line;

  end Lab_4_VG;