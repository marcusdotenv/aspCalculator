function result= calculePolar(real, img)

   modulo = sqrt(real*real+img*img);
   fase = atan(img/real)*180/pi;
   
   
   result = [modulo, fase];
end