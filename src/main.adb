with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Float_Text_IO,
     Ada.Strings.Unbounded,
     Ada.Text_IO.Unbounded_IO,
     Ada.Integer_Text_IO,
     functions;

procedure Main is
   choice: Integer:= 0;
   name: String:= functions.getString;
begin

   while choice >=0 loop
      Put_Line("Hello "&name&" please select an option.");
      Put_Line("1. Mutiply 2 numbers");
      Put_Line("2. Divide 2 numbers");
      Put_Line("3 to exit");

      Ada.Integer_Text_IO.Get(choice);

      case choice is
         when 1 =>
            Put_Line(Integer'Image(functions.multiply(functions.getInt,functions.getInt)));
         when 2 =>
            Ada.Float_Text_IO.Put(functions.divide(functions.getInt,functions.getInt), Aft=>2, exp=>0);
            New_Line(2);
         when others =>
            Put_Line("Goodbye");
            exit;
      end case;

   end loop;

end Main;


