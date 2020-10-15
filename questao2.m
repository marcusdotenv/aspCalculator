function [] = questao2()

impedanciaLinha = [0.5, 2];
impedanciaCarga = [40, 10];
tensaoLinha = [220, 0];

tensoesFase = calcularTensoes("abc", tensaoLinha, 0);
% estrela-triangulo. Vamos precisar fazer uma conversão para estrela-estrela.
novaImpedanciaCarga = calculeImpedanciaEstrela(impedanciaCarga);

zEquivalente = opereRetangular("sum", impedanciaLinha, novaImpedanciaCarga);

%adotando o modelo monofásico, podemos fazer apenas para a fase A e multiplicar por 3.

van = [tensoesFase(1), tensoesFase(2)];
vbn = [tensoesFase(3), tensoesFase(4)];
vcn = [tensoesFase(5), tensoesFase(6)];

zEquivalentePolar = calculePolar(zEquivalente(1), zEquivalente(2));

disp("Item A")
correnteA = operePolar("div",van,zEquivalentePolar)
correnteB = operePolar("div",vbn,zEquivalentePolar)
correnteC = operePolar("div",vcn,zEquivalentePolar)
disp("Item B")
operadorCorrenteFase = [sqrt(3), -30];
correnteFaseAB = operePolar("div", correnteA, operadorCorrenteFase)
correnteFaseBC = operePolar("div", correnteB, operadorCorrenteFase)
correnteFaseCA = operePolar("div", correnteC, operadorCorrenteFase)

disp("Item C")
potenciaAtivaCarga = 3*novaImpedanciaCarga(1)*correnteA(1)*correnteA(1)


end