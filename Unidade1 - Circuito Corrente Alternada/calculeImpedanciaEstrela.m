function result = calculeImpedanciaEstrela(triangleImpedance)

  polarImpedance = calculePolar(triangleImpedance);
  conversionNumber = [3 0]; % dividindo por 3 fase 0. Porque Ze = 1/3 *Zt
  resultPolar = operePolar("div", polarImpedance, conversionNumber);

  result = calculeRetangular(resultPolar);


end 