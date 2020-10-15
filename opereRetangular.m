function result = opereRetangular(selectFlag, retangularNumber1, retangularNumber2)

  if selectFlag == "sum"
    realPart = retangularNumber1(1) + retangularNumber2(1);;
    imgPart = retangularNumber1(2) + retangularNumber2(2);
    result = [realPart, imgPart]

  elseif selectFlag == "sub"
    realPart = retangularNumber1(1) - retangularNumber2(1);
    imgPart = retangularNumber1(2) - retangularNumber2(2);
    result = [realPart, imgPart]
  end 

  
end
