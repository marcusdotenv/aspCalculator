function [vnn] = calculeVNN(tensoesFase, admA, admB, admC)


moduloTerm1 = admA(1)*tensoesFase(1);
faseTerm1 = admA(2)+tensoesFase(2);

moduloTerm2 = admB(1)*tensoesFase(3);
faseTerm2 = admB(2)+tensoesFase(4);

moduloTerm3 = admC(1)*tensoesFase(5);
faseTerm3 = admC(2)+tensoesFase(6);

admARET = calculeRetangular(admA(1), admA(2));
admBRET = calculeRetangular(admB(1), admB(2));
admCRET = calculeRetangular(admC(1), admC(2));

term1Ret = calculeRetangular(moduloTerm1, faseTerm1);
term2Ret = calculeRetangular(moduloTerm2, faseTerm2);
term3Ret = calculeRetangular(moduloTerm3, faseTerm3);


numeradorReal = term1Ret(1)+term2Ret(1)+term3Ret(1);
numeradorImg = term1Ret(2)+term2Ret(2)+term3Ret(2);
denominadorReal = admARET(1)+admBRET(1)+admCRET(1);
denominadorImg = admARET(2)+admBRET(2)+admCRET(2);

numeradorPOL = calculePolar(numeradorReal, numeradorImg)
denominadorPOL = calculePolar(denominadorReal, denominadorImg)

moduloResultado = numeradorPOL(1)/denominadorPOL(1);

faseResultado = numeradorPOL(2)-denominadorPOL(2);


vnn = [-moduloResultado, faseResultado]





end