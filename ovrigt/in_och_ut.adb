with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;


procedure In_Och_Ut is
   -- deklarationer
   X: Integer;
   
begin
   -- instrtuktioner
   Ada.Text_IO.Put("mata in ett heltal: ");
   Ada.Integer_Text_IO.Get(X);
   Ada.Text_IO.Put("Det inmatade heltalet är: ");
   Ada.Text_IO.New_Line;
   -- Bra att känna till! -> Ada.Text_IO.Skip_Line;
   Ada.Integer_Text_IO.Put(X);
 
   
   
end In_Och_Ut;
   
