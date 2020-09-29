with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

with Ada.Numerics.Discrete_Random;


procedure Lab_2_Del_D is

AlphabetStr: constant String(1..26) := "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
StartWidth: constant Integer := 0;

-- procedurer för user inputs & print 
----------------------------------------------------------

-- function CalculateOffset(Size: in Integer) return Integer is

-- begin 
--     return 0;

-- end CalculateOffset;


----------------------------------------------------------
function RandomizeInteger (Max: in Integer) return Integer is

    subtype One_To_Max is
        Integer range 1..Max;
   
    package My_Random_Package is
        new Ada.Numerics.Discrete_Random(One_To_Max);
   
   use My_Random_Package;
     
   G : Generator;

    begin
        Reset(G);
        return Random(G);

end RandomizeInteger;

----------------------------------------------------------

procedure PutOffset(Offset: in Integer) is
    begin

        for L in 1..Offset loop
            Put(" ");
        end loop;


    end PutOffset;
----------------------------------------------------------

procedure PrintEye(Offset: in Integer) is
    begin
        PutOffset(Offset);
        Put("   ­_ | _­");
        New_Line;
        PutOffset(Offset);
        Put("_ _ //.\\ _ _­");
        New_Line;
        PutOffset(Offset);
        Put("   _\\”//_­");
        New_Line;
        PutOffset(Offset);
        Put("­     | ­");
        New_Line;
        PutOffset(Offset);
        Put("­ _________­");
        New_Line;

    end PrintEye;
----------------------------------------------------------

procedure PrintPyramid(Size: in Integer) is

-- starts at 9
CharLength: Integer := 9;

-- random integer data holder
RandomInteger: Integer;

begin
    for I in 1..Size loop

        -- create offset
        for J in 1..(Size - I) loop
            Put(" ");
        end loop;
      
        Put("/");

        -- create characters
        for K in 1..CharLength loop
            RandomInteger:= RandomizeInteger(26);
            Put(AlphabetStr(RandomInteger .. RandomInteger));
        end loop;

        Put("\");
        New_Line;

        CharLength:= CharLength + 2;
    end loop;

end PrintPyramid;
   
----------------------------------------------------------

Size: Integer := 3;
Offset: Integer := 1;

begin

    -- 1. get user input
    Put("Ange pyramidens storlek: ");
    Get(Size);

    -- 2. print eye --> with potential offset 
    PrintEye(10);

    -- 3. print pyramid --> with fixed size & potential offset 
    PrintPyramid(Size);

end Lab_2_Del_D;