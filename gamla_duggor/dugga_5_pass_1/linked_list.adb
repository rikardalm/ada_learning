with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Linked_List is

    ------------------------
    procedure Build_Test_List(L: out List_Type) is 
    begin
        L:= (5, 10, 15);
    end Build_Test_List;
    ------------------------
    procedure Put(L: in List_Type) is 

    I: Integer := 1;

    begin
        Put("Listan: ");
        RecursivePrint(I, L);
        New_Line;
    end Put;
    ------------------------
    procedure Replace(L: out List_Type; X, N: in Integer) is
    I: Integer := 1;
    begin
        RecursiveReplace(I, L, X, N);
    end Replace;
    ------------------------ 
    -- Private
    ------------------------
    procedure RecursivePrint(I: in out Integer; L: in List_Type) is 
    begin
            Put(L(I));
            if I < L'Length then
                Put(" -> ");
                I:= I + 1;
                RecursivePrint(I, L);
            end if;

    end RecursivePrint;
    ------------------------
    procedure RecursiveReplace(I: in out Integer; L: in out List_Type; Target, Replacement: in Integer) is 
    begin
           if L(I) = Target then
                L(I):= Replacement;
            elsif I < L'Length then
                I:= I + 1;
                RecursiveReplace(I, L, Target, Replacement);
           end if;
    end RecursiveReplace;
    ------------------------
    
end Linked_List;