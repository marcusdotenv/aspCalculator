function [result] = operePolar(selectFlag, polarNumber1, polarNumber2)

  if selectFlag == "mult"
    module = polarNumber1(1)*polarNumber2(1);
    phase = polarNumber1(2)+polarNumber2(2);

    result = [module, phase];
  elseif selectFlag == "div"
    module = polarNumber1(1)/polarNumber2(1);
    phase = polarNumber1(2)-polarNumber2(2);

    result = [module, phase];
  end

end