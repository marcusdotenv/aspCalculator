function [] = questaoTeuzin()

  tensaoFaseA = [220, -120];
  tensaoFaseB = [220, 0];
  tensaoFaseC = [220, 120];
tensoes = [tensaoFaseA, tensaoFaseB, tensaoFaseC]
  zCargaA = [20, -30];
  zCargaB = [10, 0];
  zCargaC = [5, 60];


  admA = calculeAdmitancia(zCargaA(1), zCargaA(2));
  admB = calculeAdmitancia(zCargaB(1), zCargaB(2));
  admC = calculeAdmitancia(zCargaC(1), zCargaC(2));

  vnn = calculeVNN(tensoes, admA, admB, admC)



end