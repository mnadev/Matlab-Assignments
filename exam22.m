function colorImage = exam22(booRed,booGreen,booBlue)

redComp = zeros(100);
redComp = uint8(redComp);
greenComp = redComp;
blueComp = redComp;

if booRed
    redComp = 255;
end

if booGreen
    greenComp = 255;
end

if booBlue
    blueComp = 255;
end

colorImage = uint8(zeros(100,100,3));

colorImage(:,:,1) = redComp;
colorImage(:,:,2) = greenComp;
colorImage(:,:,3) = blueComp;