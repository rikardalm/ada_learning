package Date_Handling is
   
   type Date_Type is private;

   procedure Get(Item: out Date_Type);

   procedure Put(Item: in Date_Type);

   function Next_Date(CurrentDate: in Date_Type) return Date_Type;

   -- function Previous_Date(CurrentDate: in Date_Type) return Date_Type;


private
    type Date_Type is
         record
            Day: Integer;
            Month: Integer;
            Year: Integer;
         end record;

   procedure PutWithZero(I: in Integer);

    function GetMonthDays(D: in Date_Type) return Integer;


end Date_Handling;