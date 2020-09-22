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
   -- return Index = 4;
   return Total - Index - 1 = Index;
end MiddleCheck;
---------------------------------------------------------
procedure PrintOffset(N: in out Integer) is
   begin
      for I in 1..(N+1) loop
         Put(" ");
      end loop;
end PrintOffset;
---------------------------------------------------------

N : Integer:= 1;

begin

   -- loops through all the rows
   for I in 1..GetRowCount(N) loop

      -- check if top
      if(I = 1) then
         PrintOffset(N);
         Put("^");

      -- check if bottom
      elsif(I = GetRowCount(N)) then
         PrintOffset(N);
         Put("V");

      -- check if middle, if true print horizontal row
      elsif(MiddleCheck(3, 5)) then
      -- elsif(MiddleCheck(I, GetRowCount(I))) then
         Put("<");

         for J in 1..N loop      
            Put("-");
         end loop;

         Put("+");

         for J in 1..N loop      
            Put("-");
         end loop;

         Put(">");

      -- if checks does not match, print "|"
      else
         PrintOffset(N);
         Put("|");
      end if;

      New_Line;

   end loop;



end Laboration_1_VG;