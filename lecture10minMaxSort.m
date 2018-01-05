x = randn(1,500);
[minValue, minLoc] = min(x);
[maxValue, maxLoc] = max(x);
[sortedX, locations] = sort(x,'ascend'); 
y = x.^2;
sortedY = sortedX.^2;
plot(x,y)
plot(sortedX,sortedY)