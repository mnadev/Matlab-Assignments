function indefIntegral(power)

x = 0:0.001:1;
dx = 0.001;

fx = x.^power;

ifx = x.^(power+1)/(power+1);

for i = 1:length(x)
    cifx(i) = (sum(fx(1:i)))*dx;
end


plot(x,ifx)
hold all
plot(x,cifx)
legend('Analytical Integral','Computational Integral')