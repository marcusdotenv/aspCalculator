function resultado = calcularTensoes(selectFlagSequencia, tensao, defasagemAB)
    if selectFlagSequencia == "abc"
        vab = [tensao(1), tensao(2)+0];
        vbc = [tensao(1), tensao(2)-120];
        vca = [tensao(1), tensao(2)+120];
    elseif selectFlagSequencia == "acb"
        vab = [tensao(1), tensao(2)+0];
        vbc = [tensao(1), tensao(2)+120];
        vca = [tensao(1), tensao(2)-120];
    end

    disp(vab)

    phaseVab = vab(2)-30+defasagemAB;
    phaseVbc = vbc(2)-30+defasagemAB;
    phaseVca = vca(2)-30+defasagemAB;
    
    van = [vab(1)/sqrt(3),phaseVab];
    vbn = [vbc(1)/sqrt(3),phaseVbc];
    vcn = [vca(1)/sqrt(3),phaseVca];
    

    resultado = [van, vbn, vcn];
end
