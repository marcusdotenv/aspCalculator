function result = calculeReatancia(selectFlag, valueToConvert, frenquency)

  if selectFlag == "cap"
    result = -1/(2*pi*frenquency*valueToConvert);
  elseif selectFlag == "ind"
    result = 2*pi*frenquency*valueToConvert;
  end
end