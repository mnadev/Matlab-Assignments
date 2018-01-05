function [paymentSchedule] = scheduleCreator(loans,loanRates,loanTypes,...
    months)

noPaymentTotal = loans;

for num = 1:length(loans)
    if loanTypes(num) == 1
        noPaymentTotal(num) = interestCalculation(loans(num),loanRates(num),...
        months,'yearly');
    else
        noPaymentTotal(num) = interestCalculation(loans(num),loanRates(num),...
        months,'monthly');
    end
end

roughPaymentEstimate = noPaymentTotal./months;

paymentSchedule = zeros(months,length(loans));

for time = 1:months
    paymentSchedule(time,:) = roughPaymentEstimate;
end
