function result = calculePotenciaTrifasica(potenciaMonofasica)

  potenciaTrifasicaAparente = potenciaMonofasica(1);
  potenciaReativa = potenciaTrifasicaAparente*sin(potenciaMonofasica(2)*pi/180);
  potenciaAtiva = potenciaTrifasicaAparente*cos(potenciaMonofasica(2)*pi/180);
  
  result = [potenciaTrifasicaAparente*3, potenciaAtiva*3 ,potenciaReativa*3];

end