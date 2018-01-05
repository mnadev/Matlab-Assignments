function [forces] = mn535Recitation10Problem2(mass, distance)

massEarth = 5.972*10^24;
G = 6.67408*10^-11;
forces = zeros(length(mass), length(distance));

for i=1:length(mass)
    for j=1:length(distance)
        forces(i,j) = G*massEarth*mass(i)/(distance(j)^2);
    end
end
