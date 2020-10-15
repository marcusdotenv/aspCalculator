function [] = questao1()

f = 60;
v = [220, 60];

capacitor = calculeReatancia("cap", 100E-6, f);
indutor = calculeReatancia("ind", 50E-3, f);
zeq = [100, indutor+capacitor];
zeqPOL = calculePolar(zeq(1), zeq(2));

corrente = operePolar("div", v, zeqPOL);

potenciaAtiva = zeq(1)*(corrente(1)*corrente(1));
potenciaReativaIndutor = indutor*(corrente(1)*corrente(1));
potenciaReativaCapacitor = capacitor*(corrente(1)*corrente(1));
potenciaReativaFonte = zeq(2)*(corrente(1)*corrente(1));
fatorPotencia = zeqPOL(2)

end