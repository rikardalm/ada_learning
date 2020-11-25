with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Lab_6_G is

--------------------
procedure GetDate(File: in File_Type; Date: out String; DateLength: out Integer) is 
begin

   Get_Line(File, Date, DateLength);

   if DateLength = Date'Length then
      Skip_Line(File);
   end if;

end GetDate;
-----------------------
function InvalidDate(Date: in String) return Boolean is
begin
    -- checks year-month & month-day separator 
      return (Date(5..5) /= "-" or Date(8..8) /= "-" );
end InvalidDate;
-----------------------
procedure PrintDate(Date: in String) is
begin
    -- checks year-month & month-day separator
    Put_Line(Date(1..10));
end PrintDate;
-----------------------

File: File_Type;
FileName: String := "FALSE_DATES.TXT";

Date: String(1..11); -- 0000-00-00 length = 10, +1 space to loop file
DateLength: Integer;

begin
    Open(File, In_File, FileName);

    Put_Line("Följande falska datum hittades: ");

    while not End_Of_File(File) loop
    
        GetDate(File, Date, DateLength);

        if InvalidDate(Date) then
            PrintDate(Date);
        end if;

    end loop;

    Close(File);
    
end Lab_6_G;