function result= calculePolar(realPart, imgPart)

   modulo = sqrt(realPart*realPart+imgPart*imgPart);
   fase = atan(imgPart/realPart)*180/pi;
   
   
   result = [modulo, fase];
end