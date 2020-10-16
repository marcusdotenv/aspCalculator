function result= calculePolar(retangularNumber)

   modulo = sqrt((retangularNumber(1)*retangularNumber(1))+(retangularNumber(2)*retangularNumber(2)));
   fase = atan(retangularNumber(2)/retangularNumber(1))*180/pi;
   
   
   result = [modulo, fase];
end