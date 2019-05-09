# Create deterministic data
xGrid = seq(0,10,length=1000);
yGrid = xGrid^20;
plot(xGrid, yGrid, type='l');

# Regress sqrt of y on x
reg = lm(sqrt(yGrid)~xGrid);

# Compute correlation between x and y
cor(xGrid, yGrid)
cor(xGrid, yGrid^(1/20))