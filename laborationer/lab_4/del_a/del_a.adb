with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Date_Handling; use Date_Handling;

procedure Del_A is

Date: Date_Type;

begin
    Ada.Text_IO.Put("Ange ett datum: ");
    Get(Date);
    
    Ada.Text_IO.Put("Ett datum: ");
    Put(Date);

end Del_A;