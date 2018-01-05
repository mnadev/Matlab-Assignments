%this function returns an array base on given grades
function [grade] = mn535Recitation5Problem2(shearForce, tensileForce)

grade = zeros (1, length(shearForce));

for i = 1:length(shearForce)
    thisGrade = mn535Recitation3Problem1(shearForce(i), tensileForce(i));
    switch thisGrade
        case 'Grade 1 Low Carbon Steel' 
            grade(i) = 1;
        case 'Grade 2 Low Carbon Steel'
            grade(i) = 2;
        case 'Grade 5 Medium Carbon Steel'
            grade(i) = 5;
        case 'Grade 8.2 Low Carbon Boron Steel'
            grade(i)=8.2;
    end 
end