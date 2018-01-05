function[newAngle] = mn535Recitation7Problem2 (idealAngle, oldAngle)
if abs(oldAngle - idealAngle) > 0.01 
    if oldAngle > idealAngle
        oldAngle = oldAngle - 0.01;
    else 
        oldAngle = oldAngle + 0.01;
    end
end

newAngle = oldAngle;
