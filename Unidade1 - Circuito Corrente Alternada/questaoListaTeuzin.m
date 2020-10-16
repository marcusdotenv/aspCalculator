function [] = questao4()

  zCarga = [15, 30];
  zLinhaA = [0.5, 53.13];
  zLinhaB = [1, 36.87];
  zLinhaC = [0.8, 90];
  
  zCargaRET = calculeRetangular(zCarga);
  zLinhaARET = calculeRetangular(zLinhaA);
  zLinhaBRET = calculeRetangular(zLinhaB);
  zLinhaCRET = calculeRetangular(zLinhaC);

zEquivalenteA = opereRetangular("sum", zCargaRET, zLinhaARET);
zEquivalenteB = opereRetangular("sum", zCargaRET, zLinhaBRET);
zEquivalenteC = opereRetangular("sum", zCargaRET, zLinhaCRET);

zEquivalenteAPOL = calculePolar(zEquivalenteA);
zEquivalenteBPOL = calculePolar(zEquivalenteB);
zEquivalenteCPOL = calculePolar(zEquivalenteC);


correnteLinhaA = operePolar("div", [220, -100], zEquivalenteAPOL);
correnteLinhaB = operePolar("div", [220, 140], zEquivalenteBPOL);
correnteLinhaC = operePolar("div", [220, 20], zEquivalenteCPOL);

correnteLinhaARET = calculeRetangular(correnteLinhaA);
correnteLinhaBRET = calculeRetangular(correnteLinhaB);
correnteLinhaCRET = calculeRetangular(correnteLinhaC);

correnteFaseA = opereRetangular("sub", correnteLinhaARET, correnteLinhaCRET);
correnteFaseB = opereRetangular("sub", correnteLinhaBRET, correnteLinhaARET);
correnteFaseC = opereRetangular("sub", correnteLinhaCRET, correnteLinhaBRET);

correnteFaseAPOL = calculePolar(correnteFaseA)
correnteFaseBPOL = calculePolar(correnteFaseB)
correnteFaseCPOL = calculePolar(correnteFaseC)







end
