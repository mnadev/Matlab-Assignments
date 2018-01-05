%this script calculates how many binary words are possible 

%ask user how many bits are in the binary word
numOfBits = input('How many bits are in the binary word');

%calculate total different values
totalDiffVal = 2 ^ (numOfBits);

disp('There are this many total different values:');
disp(totalDiffVal);
