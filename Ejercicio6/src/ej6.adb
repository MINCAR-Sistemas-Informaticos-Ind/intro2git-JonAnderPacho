with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Ej6 is
   iLibras, iOnzas : Integer;
   fKilos, fOnzasConvertido, fLibrasTotal : Float;
   ConversionKilos : constant := 0.4536;
   ConversionLibrasOnzas : constant := 0.0625; -- 1 libra / 16 onzas --> 1/16
begin
   --  Insert code here.
   Ada.Text_IO.New_Line(1);
   Ada.Text_IO.Put_line("Introduzca los siguientes datos: ");

   Ada.Text_IO.Put("Libras: ");
   Ada.Integer_Text_IO.Get(iLibras);

   Ada.Text_IO.Put("Onzas: ");
   Ada.Integer_Text_IO.Get(iOnzas);


   --fOnzasConvertido:=Float(iOnzas)*ConversionLibrasOnzas;
   fOnzasConvertido:=Float(iOnzas)*1.0/16.0;
   fLibrasTotal:=Float(iLibras)+fOnzasConvertido;

   fKilos:=fLibrasTotal*ConversionKilos;

   Ada.Text_IO.New_Line(1);
   Ada.Text_IO.Put("El total de kilos es: ");
   Ada.Float_Text_IO.Put(fKilos, aft => 4, exp => 0);
   Ada.Text_IO.Put_Line(" kg");

   New_Line(1);
   Put("Prueba Git Modificacion 1");

   -- Prueba Git: MODIFICACION 1

end Ej6;
