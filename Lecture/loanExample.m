loans = [10000, 20000, 1500, 500];
rates = [10, 7.5, 20, 15.5];
loanTypes = [1 1 1 2];
months = 12;
schedule = scheduleCreator(loans,rates,loanTypes,months);
[afterLoans,interest,totalOwed] = financeCalculator(loans,rates,loanTypes,schedule);