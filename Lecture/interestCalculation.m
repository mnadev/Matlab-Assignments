%This function calculates interest over a period of a cartain number of
%months for monthly and yearly interest rates, vesting monthly. amount is a
%decimal number, rate is a decimal percentage, months is an integer, and
%type is a string

function [newAmount] = interestCalculation(amount,rate,months,type)

%Our new amount of money owed equals our old amount the begin. We will
%update newAmount throughout our code.
newAmount = amount;

%This switch checks for whether the type of interest rate is monthly or
%yearly, and is not case sensitive to the first letter of both of those
%words.
switch type
    case {'monthly', 'Monthly'}
        for i = 1:months
            %The new loan amount is updated monthly. With monthly interest
            %rates, the interest is the amount currently in the loan
            %multiplied by the rate converted from percentage to a
            %fraction.
            newAmount = newAmount + newAmount*rate/100;
        end
    case {'yearly', 'Yearly'}
        for i = 1:months
            %With yearly interest rates, the interest is the amount 
            %currently in the loan multiplied by the rate converted from 
            %percentage to a fraction, and then divided by 12 for the
            %interest fraction per month.
            newAmount = newAmount + newAmount*rate/1200;
        end
    otherwise
        %This is an optional built in error to give the user more
        %information about how they might be using this function
        %incorrecctly
        error('This calculator only works for monthly or yearly interest rates')
end