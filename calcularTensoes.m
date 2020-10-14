function resultado = calcularTensoes(selectFlagSequencia, tensao, defasagemAB)
    vab = [0,0];
    vbc = [0,0];
    vca = [0,0];
    
    if selectFlagSequencia == "abc"
    vab = [tensao, 0]
    vbc = [tensao, -120]
    vca = [tensao, 120]
elseif selectFlagSequencia == "acb"
    vab = [tensao, 0]
    vbc = [tensao, 120]
    vca = [tensao, -120]
    end
    
    van = [vab(1)/sqrt(3),vab(2)-30+defasagemAB];
    vbn = [vbc(1)/sqrt(3),vbc(2)-30+defasagemAB];
    vcn = [vca(1)/sqrt(3),vca(2)-30+defasagemAB];
    

    resultado = [van, vbn, vcn]
end
