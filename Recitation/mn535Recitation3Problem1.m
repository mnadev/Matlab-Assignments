% This script calculates material needed for handling loads
function [outString] = mn535Recitation3Problem1(shearLoad, tensionLoad)
    if shearLoad < 33000 && tensionLoad < 60000
        outString = 'Grade 1 Low Carbon Steel';
    elseif shearLoad < 55000 && tensionLoad < 74000
        outString = 'Grade 2 Low Carbon Steel';
    elseif shearLoad < 85000 && tensionLoad < 120000
        outString = 'Grade 5 Medium Carbon Steel';
    elseif shearLoad < 120000 && tensionLoad < 150000
        outString = 'Grade 8.2 Low Carbon Boron Steel';
    else 
        outString = 'Consider a better material';
    end