function [preyProg, predProg] = predPreyModel(prey,pred,time)

predProg = zeros(1,time+1);
preyProg = zeros(1,time+1);

a = 0.25/(24*30);
alpha = 0.01/(25*30);

b = 0.25/(24*30);
beta = 0.01/(24*30);

predProg(1) = pred;
preyProg(1) = prey;

for i = 1:time
    predProg(i+1) = predProg(i) +(- b*predProg(i) +...
        beta*preyProg(i)*predProg(i));
    preyProg(i+1) = preyProg(i) + (a*preyProg(i) -...
        alpha*preyProg(i)*predProg(i)); 
end

plot([1:time+1]/(24*30),predProg)
hold all
plot([1:time+1]/(24*30),preyProg)

legend('PredatorPopulation','PreyPopulation')
xlabel('Time (Months)')
ylabel('Population')

pause

figure

for i = 1:500:time+1
    plot(predProg,preyProg)
    hold on
    scatter(predProg(i),preyProg(i))
    hold off
    xlabel('predatorPopulation')
    ylabel('preyPopulation')
    pause(0.1)
end