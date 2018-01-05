%THIS SCRIPT CALCULATES SURFACE AREA OF OBLATE SPHEOROID AND THE SPHERICAL
%APPROXIMATION

radiusEquatorial = input('What is the equatorial radius of your spheroid?');
radiusPolar = input('What is the polar radius of your spheroid?');

gamma = acos(radiusPolar/radiusEquatorial);

%surface area calculation
longExpression=radiusPolar^2 * log(cos(gamma)/(1-sin(gamma)))/sin(gamma);
surfaceArea = 2*pi * (radiusEquatorial^2 + longExpression);

%spherical approximation
sphericalApprox = 4*pi * (( (radiusPolar + radiusEquatorial) / 2) ^2);

disp('The surface Area is:');
disp(surfaceArea);

disp('The spherical approximation is:');
disp(sphericalApprox);