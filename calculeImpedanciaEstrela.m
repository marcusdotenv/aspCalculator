function result = calculeImpedanciaEstrela(triangleImpedance)

  polarImpedance = calculePolar(triangleImpedance(1), triangleImpedance(2));
  conversionNumber = [3 0]; % dividindo por 3 fase 0. Porque Ze = 1/3 *Zt
  resultPolar = operePolar("div", polarImpedance, conversionNumber);

  result = calculeRetangular(resultPolar(1), resultPolar(2));


end 