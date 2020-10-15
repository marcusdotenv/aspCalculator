function [] = questao3()

  f = 60;
  tensaoLinha = [380, 0];
  impedanciaLinha = [2, 10];
  impedanciaCarga = [150, 40];
  operadorTensao = [sqrt(3), 30]

  tensoes = calcularTensoes("abc", tensaoLinha, 20);

  zEquivalente = opereRetangular("sum", impedanciaCarga, impedanciaLinha);

  zEquivalentePolar = calculePolar(zEquivalente(1), zEquivalente(2));

  van = [tensoes(1), tensoes(2)];
  vbn = [tensoes(3), tensoes(4)];
  vcn = [tensoes(5), tensoes(6)];

  disp("Item A");
  correnteLinhaA = operePolar("div", van, zEquivalentePolar);
  correnteLinhaB = operePolar("div", vbn, zEquivalentePolar);
  correnteLinhaC = operePolar("div", vcn, zEquivalentePolar);

  impedanciaCargaPol = calculePolar(impedanciaCarga(1), impedanciaCarga(2));

  disp("Item B");
  tensaoFaseA = operePolar("mult", correnteLinhaA, impedanciaCargaPol)
  tensaoFaseB = operePolar("mult", correnteLinhaB, impedanciaCargaPol);
  tensaoFaseC = operePolar("mult", correnteLinhaC, impedanciaCargaPol);
  tensaoLinhaA = operePolar("mult", operadorTensao, tensaoFaseA);
  tensaoLinhaB = operePolar("mult", operadorTensao, tensaoFaseB);
  tensaoLinhaC = operePolar("mult", operadorTensao, tensaoFaseC);

  disp("Item C");

  correnteAConj = calculeConjulgado(correnteLinhaA);
  potenciaMonofasica = operePolar("mult", tensaoFaseA, correnteAConj);
  potenciaTrifasica = calculePotenciaTrifasica(potenciaMonofasica)


end 