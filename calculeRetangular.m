function result = calculeRetangular(modulo, fase)

fase_rad = fase*pi/180;

real = modulo*cos(fase_rad);

img = modulo*sin(fase_rad);


result = [real, img];
end
