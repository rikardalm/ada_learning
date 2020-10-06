with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Linked_List; use Linked_List;

procedure Lab_5_VG is
X : Integer;
L : List_Type;
begin
    Build_Test_List(L); -- bygger listan 5 -> 10 -> 15
    Put(L);
    Put("Mata in vilket element du vill byta ut mot en 7:a: ");
    Get(X);
    Replace(L, X, 7);
    Put(L);
end Lab_5_VG;