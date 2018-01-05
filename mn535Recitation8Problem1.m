function [frictionForces] = mn535Recitation8Problem1(angles, mass, staticCoef, kineticCoef)


angleFriction = atand(staticCoef);
gravConst = 9.81;
frictionForces = angles;

for i = 1:length(angles)
    if angleFriction > angles(i)
        frictionForces(i) = mass * gravConst * sind(angles(i));
    elseif angleFriction < angles(i)
        frictionForces(i) = kineticCoef * mass * gravConst * cosd(angles(i));
    end
end