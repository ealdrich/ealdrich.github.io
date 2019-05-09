setwd("~/Dropbox/Academics/Teaching/Econ211C/S2013/LectureSlides/Unit1-ARMA/Section2-ARMA/")

#################################################################
# Plot ACF for MA(1)
#################################################################

# Draw a long series of white noise
N = 10000000;
sigma = 0.5;
eps = rnorm(N, 0, sigma);

# Compute MA(1)
mu = 0.61;
theta = 0.8;
y = mu + eps[2:N] + theta*eps[1:(N-1)];

# plot the empirical acf
pdf(file="ma1-acf.pdf", height=8, width=10)
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
pdf(file="lag1-autocorr-ma1.pdf", height=6, width=10)
plot(thetaGrid, rho1, type='l', xlab=expression(theta), ylab=expression(rho[1]),
	 main="Lag 1 Autocorrelation for MA(1)")
abline(h=0);
abline(h=0.5, lty=3);
abline(h=-0.5, lty=3);
dev.off()