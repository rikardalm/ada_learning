with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure NFakultet is

N: Integer;
Produkt: Integer := 1;

begin
  Put("Mata in N: ");
  Get(N);

  for I in 1..N loop
    Produkt:= Produkt*I;
  end loop;

  Put(N, 0);
  Put("! = ");
  Put(Produkt, 0);

end NFakultet;