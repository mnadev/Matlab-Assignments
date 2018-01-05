function [incidentAngle] = mn535Recitation7Problem1(latitude, day)
constant = 23.45;
angleArg = (284+day)/362.5;
angleConst = 2*pi;

declinationAngle = constant * sin(angleConst *  angleArg);

cosIncidence = cosd(declinationAngle) *cosd(latitude) +sind(declinationAngle)*sind(latitude);

if latitude - declinationAngle > 0
    incidentAngle = -acosd(cosIncidence);
else
    incidentAngle = acosd(cosIncidence);
end