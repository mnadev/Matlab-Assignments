%This function calculates the end values of a set of loans, given a set of
%loanRates (interest rates) of certain loanTypes (1 for yearly interest,
%anything else for monthly interest), with a paymentSchedule applied.
%paymentSchedule is of timensions timexnumLoans, where time is the number
%of months the payment schedule is applied, and numLoans matches the number
%of elements in loans, loanRates and loanTypes.

function [loans, interest, totalOwed] = financeCalculator(loans,loanRates,...
    loanTypes,paymentSchedule)

[time, numLoans] = size(paymentSchedule);

%This is an example of you you can create your own errors. We need all of
%our inputs to be the same length, in terms of how many loans there are.
%This checks that condition and returns a more informative error in case
%they aren't the same. If you didn't have this here, you'd still encounter
%an error later in your program when this condition isn't met, you would
%just have to do more interpreting.
if ~(numLoans == length(loanRates) && length(loans) == numLoans &&...
        numLoans == length(loanTypes))
    error('Your input arrays must all be the same length!')
end

%Interest accrued durring this payment schedule starts at 0.
interest = 0;

for j = 1:time
    for i = 1:numLoans
        if loanTypes(i) == 1 %1 is yearly, everything else is monthly
            %With these loans, we subtract montly payments from the loan
            %total BEFORE calculating interest.
            loans(i) = loans(i) - paymentSchedule(j,i);
            %This will always call loanRates in increments of one month, as
            %we have a schedule of monthly payments that also affects the
            %amount owed. If the loan is payed off, no interest is accrued.
            if loans(i) > 0
                newAmt = interestCalculation(loans(i),loanRates(i),1,'yearly');
            %We determine the new loan amount, then use the difference
            %between new and old amounts (after payment) to update the
            %total amount of interest accrued.
                interest = interest + newAmt-loans(i);
            %Once we make the interest calculation, we update our loan
            %amount.
                loans(i) = newAmt;
            end
        else %This does the same as above, but for monthly interest rates.
            loans(i) = loans(i) - paymentSchedule(j,i);
            if loans(i) > 0
                newAmt = interestCalculation(loans(i),loanRates(i),1,'monthly');
                interest = interest + newAmt-loans(i);
                loans(i) = newAmt;
            end
        end
    end
end
%The total amount owed in loans is the sum of all loans after the payment
%schedule.
totalOwed = sum(loans);
        