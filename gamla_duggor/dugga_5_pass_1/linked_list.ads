package Linked_List is

    type List_Type is private;

    procedure Build_Test_List(L: out List_Type);

    procedure Put(L: in List_Type);

    procedure Replace(L: out List_Type; X, N: in Integer);

private 

    type List_Type is array(1..3) of Integer;

    procedure RecursivePrint(I: in out Integer; L: in List_Type);

    procedure RecursiveReplace(I: in out Integer; L: in out List_Type; Target, Replacement: in Integer);


end Linked_List;