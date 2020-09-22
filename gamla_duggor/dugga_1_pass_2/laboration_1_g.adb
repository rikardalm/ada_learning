with Ada.Text_IO;		use Ada.Text_IO;
with Ada.Integer_Text_IO;	use Ada.Integer_Text_IO;

procedure Laboration_1_G is
   
   N : Integer;
   
begin
   Put("Mata in ett heltal: ");
   Get(N);
   Put('<');
   if N >= 0 then

      for I in reverse 0 .. N loop
	      Put(I, Width => 0);
      end loop;

      for I in 1 .. N loop
	      Put(I, Width => 0);
      end loop;

   else
      for I in N .. -1 loop
	      Put(I, Width => 0);
      end loop;

      for I in reverse N .. 0 loop
	      Put(I, Width => 0);
      end loop;
   end if;

   Put('>');
   New_Line;

end Laboration_1_G;