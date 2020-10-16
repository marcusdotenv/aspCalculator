function [] = wattimetro()

  zab = [20, 90];
  zbc = [40, 60];
  zca = [30, 0];

  tensaoLinhaA = [13.8E3, 0];
  tensaoLinhaB = [13.8E3, -120];
  tensaoLinhaC = [13.8E3, 120]


  Iab = operePolar("div", tensaoLinhaA, zab);
  Ibc = operePolar("div", tensaoLinhaB, zbc);
  Ica = operePolar("div", tensaoLinhaC, zca);

  IabRET = calculeRetangular(Iab);
  IbcRET = calculeRetangular(Ibc);
  IcaRET = calculeRetangular(Ica);


  correnteA = opereRetangular("sub", IabRET, IcaRET);
  correnteB = opereRetangular("sub", IbcRET, IabRET);
  correnteC = opereRetangular("sub", IcaRET, IbcRET);

  correnteAPOL = calculePolar(correnteA);
  correnteBPOL = calculePolar(correnteB);
  correnteCPOL = calculePolar(correnteC);
  
  w1 = tensaoLinhaA(1)*correnteAPOL(1)*cos(calculeRadiano(tensaoLinhaA(2) - correnteAPOL(2)));
  w2 = tensaoLinhaC(1)*correnteCPOL(1)*cos(calculeRadiano(tensaoLinhaC(2) - correnteCPOL(2)));

  potenciaTotal = w1+w2


  

end