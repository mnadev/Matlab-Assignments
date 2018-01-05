figure
power = linspace(0,20,500);
x = linspace(-2,2,1000);

for i = 1:length(power)
    plot(x,real(x.^power(i)));
    xlim([-2,2])
    ylim([-2^5,2^5])
    title(['Power of ' num2str(power(i)) ' plot'])
    pause(0.125/4)
end