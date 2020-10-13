function calculePolar(real, img)

   modulo = sqrt(real*real+img*img)
   fase = atan(img/real)
   
   return [modulo, fase]
   
end