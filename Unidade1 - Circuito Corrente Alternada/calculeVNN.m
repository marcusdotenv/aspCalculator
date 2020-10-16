function [vnn] = calculeVNN(tensoesFase, admA, admB, admC)


  tensaoFaseA = [tensoesFase(1), tensoesFase(2)];
  tensaoFaseB = [tensoesFase(3), tensoesFase(4)];
  tensaoFaseC = [tensoesFase(5), tensoesFase(6)];

term1 = operePolar("mult", admA, tensaoFaseA)

term2 = operePolar("mult", admB, tensaoFaseB)

term3 = operePolar("mult", admC, tensaoFaseC)

admARET = calculeRetangular(admA);
admBRET = calculeRetangular(admB);
admCRET = calculeRetangular(admC);

term1Ret = calculeRetangular(term1);
term2Ret = calculeRetangular(term2);
term3Ret = calculeRetangular(term3);


numerador_1 = opereRetangular("sum", term1Ret, term2Ret);
numeradorFinal = opereRetangular("sum", numerador_1, term3Ret);

denominador_1 = opereRetangular("sum", admARET, admBRET);
denominadorFinal = opereRetangular("sum", admCRET, denominador_1);


numeradorPOL = calculePolar(numeradorFinal)
denominadorPOL = calculePolar(denominadorFinal)

moduloResultado = numeradorPOL(1)/denominadorPOL(1);

faseResultado = numeradorPOL(2)-denominadorPOL(2);


vnn = [-moduloResultado, faseResultado]





end