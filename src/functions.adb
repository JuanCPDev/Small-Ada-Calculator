with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
package body functions is
   
   function multiply(A,B: Integer) return Integer is
      
   begin
      return A*B;
   end multiply;

  
   function getString return String is            
   begin 
      Put_Line("Enter your name");
      declare
         name:String := Ada.Text_IO.Get_Line;
      begin
         return name;
      end;
   end getString;
   
   function getInt return Integer is
      I : Integer:=0;
   begin
      Put_Line("Enter a number");
      Ada.Integer_Text_IO.Get(I);
      return I;
   end getInt;
   
   function divide(A,B: Integer) return Float is
      result: Float;
   begin
      result := float(A)/float(B);
      return result;
   end divide;
   
end functions;
