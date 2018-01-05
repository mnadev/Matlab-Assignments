function exam24(x,y)

sortedx = sort(x,'ascend');

[mn, mnind] = min(y);

[mx, mxind] = max(y);

plot(sortedx,y)

hold all

scatter(sortedx(mnind),mn)

scatter(sortedx(mxind),mx)