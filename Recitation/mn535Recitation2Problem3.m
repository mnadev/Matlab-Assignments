%this script simulates a binary half adder

bitA = input(['What is the value of the first bit to go into the binary adder?']); %First input bit
bitB = input(['What is the value of the second bit to go into the binary adder?']); %Second input bit

bitC = 0;
bitS = 0;

if bitA == 0 && bitB == 0
    bitC = 0;
    bitS = 0;
elseif bitA == 0 && bitB == 1
    bitC = 0;
    bitS =1;
elseif bitA == 1 && bitB == 0
    bitC = 0;
    bitS = 1;
elseif bitA == 1 && bitB == 1
    bitC = 1;
    bitS = 0;
else 
    disp('Please have a number that is 1 or 0')
end;


disp('bitS is:');
disp(bitS);

disp('bitC is:');
disp(bitC);