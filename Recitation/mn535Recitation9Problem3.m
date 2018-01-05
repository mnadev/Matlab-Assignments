function [imgNew, hiddenTxt] = mn535Recitation9Problem3(img, csvFile, color, booleanImg, booleanHidden)

    if ischar(img)
        img = imread(img);
    end
    
    if ischar(csvFile) 
        csvTxt = csvread(csvFile);
    end
    
    csvTxt = uint8(csvTxt);
    
    if booleanImg
        img = colorFlip(img);
    end
    
    if booleanHidden
        csvTxt = imageNegative(csvTxt);
    end
    
    switch color
        case {'red', 'Red', 'RED'}
            img(:, :, 1) = csvTxt;
        case {'green', 'Green', 'GREEN'}
            img(:, :, 2) = csvTxt;
        case {'blue', 'Blue', 'BLUE'}
            img(:, : , 3) = csvTxt;
        %otherwise
        %    disp('Check your inputs');          
    end
        
    imgNew = img;
    hiddenTxt = csvTxt;
end