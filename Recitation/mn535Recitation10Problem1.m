function [computationalDeriv, approxDeriv] = mn535Recitation10Problem1(power)

x = linspace(0,1,100);
fx = x.^power;
approxDeriv = zeros(1,100);
computationalDeriv = power*x.^(power-1);

for i = 1:99
  approxDeriv(i) = (fx(i+1)-fx(i))/(x(i+1)-x(i));
end