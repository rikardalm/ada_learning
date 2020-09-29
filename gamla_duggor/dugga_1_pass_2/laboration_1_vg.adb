with Ada.Text_IO;		use Ada.Text_IO;
with Ada.Integer_Text_IO;	use Ada.Integer_Text_IO;

procedure Laboration_1_VG is
   
---------------------------------------------------------
function GetRowCount (N: in Integer) return Integer is
begin
   return N*2 + 3;
end GetRowCount;
---------------------------------------------------------
function MiddleCheck (Index, Total: in Integer) return Boolean is

begin
   return (Index*2) - Total = 1;
end MiddleCheck;
---------------------------------------------------------
procedure PrintOffset(N: in out Integer) is
   begin
      for I in 1..(N+1) loop
         Put(" ");
      end loop;
end PrintOffset;
---------------------------------------------------------
procedure PrintMiddle(N: in out Integer) is
   begin
         Put("<");

         for J in 1..N loop      
            Put("-");
         end loop;

         Put("+");

         for J in 1..N loop      
            Put("-");
         end loop;

         Put(">");
end PrintMiddle;
---------------------------------------------------------

N : Integer;

begin

   Put("Mata in ett heltal: ");
   Get(N);

   for I in 1..GetRowCount(N) loop
      
      if(MiddleCheck(I, GetRowCount(N))) then
         PrintMiddle(N);
      elsif(I = 1) then
         PrintOffset(N);
         Put("^");
      elsif(I = GetRowCount(N)) then
         PrintOffset(N);
         Put("V");
      else
         PrintOffset(N);
         Put("|");
      end if;

      New_Line;

   end loop;

end Laboration_1_VG;