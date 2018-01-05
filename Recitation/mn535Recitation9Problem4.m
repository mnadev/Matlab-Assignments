function [v1, v2, v3, v4] = mn535Recitation9Problem4(voltage, valueR1, valueR2, valueR3, valueR4)

A = [(valueR1+valueR4) -valueR1 0; -valueR1 (valueR1+valueR2) -valueR2;0 -valueR2 (valueR2+valueR3)];
b= [voltage; 0; 0;]; 

i = inv(A) * b;

v1 = (i(1) - i(2))*valueR1 ;
v2 = valueR2*(i(2)-i(3));
v3 = valueR3* i(3);
v4 = valueR4 * i(1);
end