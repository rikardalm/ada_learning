with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Lab_5_G is

    procedure Countdown(N: in out Integer) is

    begin
        Put(N, 0);
        Put(" ");

        if N > 1 then
            N:= N-1;
            Countdown(N);
        end if;

    end Countdown;

    N: Integer;

    begin
        Put("Mata in ett tal: ");
        Get(N);
        Countdown(N);
end Lab_5_G;