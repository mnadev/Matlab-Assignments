function [finalAngle] = mn535Recitation7Problem3 (latitude, day)
finalAngle = 0;

[incidentAngle] = mn535Recitation7Problem1 (latitude, day);

while abs(finalAngle - incidentAngle) > 0.01
    [finalAngle] = mn535Recitation7Problem2 (incidentAngle, finalAngle);
    %pause(0.25);
    %disp(finalAngle);
end
