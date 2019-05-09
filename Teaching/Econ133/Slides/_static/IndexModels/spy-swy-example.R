library(quantmod)

# Risk free
rf = 0.02;

#spyDat = getSymbols("SPY", src="yahoo", auto.assign=FALSE)
# Get the data
spyDat = read.csv("~/Dropbox/Academics/Teaching/Econ133/W2013/LectureSlides/Lec11/spy-2007-2012.csv");
swyDat = read.csv("~/Dropbox/Academics/Teaching/Econ133/W2013/LectureSlides/Lec11/swy-2007-2012.csv");

# Isolate the prices
spyPrices = spyDat$Adj.Close;
swyPrices = swyDat$Adj.Close;

# Compute returns
nRets = length(spyPrices)-1;
dates = as.Date(head(spyDat$Date, nRets));
spyExcessRets = diff(log(spyPrices)) - rf;
swyExcessRets = diff(log(swyPrices)) - rf;

# Plot time series
pdf(file="~/Dropbox/Academics/Teaching/Econ133/W2013/LectureSlides/Lec11/spy-swy-tsplot.pdf", height=4, width=8)
plot(dates, spyRets, type="l", xlab="Time", ylab="Returns", main="Time Series Plot of SPY and SWY");
lines(dates, swyRets, col="blue");
abline(h=0);
dev.off()

# Regression
swyReg = lm(swyExcessRets ~ spyExcessRets);
alpha = swyReg$coef[1];
beta = swyReg$coef[2];

# Plot the regression line
pdf(file="~/Dropbox/Academics/Teaching/Econ133/W2013/LectureSlides/Lec11/spy-swy-reg.pdf", height=8, width=8)
plot(spyExcessRets, swyExcessRets, xlab="SPY Returns", ylab="SWY Returns", main="SCL for SWY")
abline(alpha, beta);
dev.off()