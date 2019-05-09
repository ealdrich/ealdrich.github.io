#################################################################
# Simulate MA(1)
#################################################################

# Simulate MA(1)
N = 1000000;
sigma = 0.5;
eps = rnorm(N, 0, sigma);

# Simulate
mu = 0.61;
theta = 0.8;
y = mu + eps[2:N] + theta*eps[1:(N-1)];

# Plot
png(file="ma1ExampleSeries.png", height=600, width=1000)
plot(y, main=paste("MA(1), ",expression(theta)," = ",theta, sep=""),type="l")
dev.off()


#################################################################
# Plot ACF for MA(1)
#################################################################

# Plot the empirical acf
png(file="ma1ACF.png", height=600, width=1000)
acf(y, main="Autocorrelations for MA(1)")
dev.off()

#################################################################
# Plot lag 1 autocorrelation for different MA(1)
#################################################################

# Construct a grid of first-order coefficients
N = 10000;
thetaGrid = seq(-3, 3, length=N);

# Compute the lag 1 autocorrelations
rho1 = thetaGrid/(1+thetaGrid^2);

# Plot
png(file="ma1Lag1.png", height=600, width=1000)
plot(thetaGrid, rho1, type='l', xlab=expression(theta), ylab=expression(rho[1]),
	 main="Lag 1 Autocorrelation for MA(1)")
abline(h=0);
abline(h=0.5, lty=3);
abline(h=-0.5, lty=3);
dev.off()