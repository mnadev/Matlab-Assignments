figure
power = linspace(0,10,250);
x = linspace(-5,5,1000);

for i = 1:length(power)
    plot(x,sin(power(i)*x));
    xlim([-5,5])
    ylim([-1.5,1.5])
    title(['Sine with Frequency of ' num2str(power(i)) ' plot'])
    pause(0.125/4)
end