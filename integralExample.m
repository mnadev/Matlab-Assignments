a = 1;
b = 5;

analyticalIntegral = b^3/3 - a^3/3;

x = a:0.000001:b;

computationalIntegral = sum(x.^2)*0.000001;