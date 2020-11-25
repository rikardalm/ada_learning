with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure Lab_2_VG is

procedure Print(X, Y, N: in Integer) is

begin

    for I in 1..N loop 

        if I rem X = 0 and I rem Y = 0 then
            Put("fie-fum");
        elsif I rem X = 0 then 
            Put("fie"); 
        elsif I rem Y = 0 then 
            Put("fum");
        else
            Put(I, 0);
        end if;

        Put(" ");

    end loop;
    
end Print;
--------------------
procedure UserInput(X, Y, N: out Integer) is

HighestValue: Integer;

begin 
    Put("Mata in X: ");
    Get(X);
    HighestValue:= X;

    -- felhantera Y
    loop
        Put("Mata in Y: ");
        Get(Y);

        if Y = X then
            Put("Fel! X och Y får inte vara samma tal! ");
            New_Line;
        elsif Y > X then
            HighestValue:= Y;
            exit;
        else 
            exit;
        end if;

    end loop;

    -- felhantera N
    loop
        Put("Mata in N: ");
        Get(N);

        if N < HighestValue then
            Put("Fel! N måste vara >= ");
            Put(HighestValue, 0);
            New_Line;
        else
            exit;
        end if;
        
    end loop;

end UserInput;
--------------------
X, Y, N: Integer;

begin
    UserInput(X,Y,N);
    Print(X,Y,N);
   
end Lab_2_VG;