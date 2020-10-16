function result = calculeRetangular(polarNumber)

fase_rad = polarNumber(2)*pi/180;

realPart = polarNumber(1)*cos(fase_rad);

imgPart = polarNumber(1)*sin(fase_rad);


result = [realPart, imgPart];
end
