# Set working directory
setwd("~/Dropbox/Academics/Teaching/Econ211C/S2015/LectureNotes/_static/MLE/")

#######################################################################################
# Plot likelihood for normal data with unknown mean
#######################################################################################

# Generate the true normal density
mu = 10;
sig = 15;
xGrid = seq(mu-5*sig, mu+5*sig, length=10000)
trueDens = dnorm(xGrid, mu, sig)

# A couple of possible data values
y11 = 30;
y12 = -17.7;

# Plot the true normal distribution with possible data values
plot(xGrid, trueDens, type='l', xaxs='i', yaxs='i', xaxt='n', xlab='', ylab='',
	 yaxt='n', bty='L')
axis(1, labels=c(expression(mu), expression(y[1]), expression(y[1])),
     at=c(mu, y11, y12))
abline(v=mu)
segments(y11, 0, y11, dnorm(y11, mu, sig), lty=2)
segments(y12, 0, y12, dnorm(y12, mu, sig), lty=2)
dev.copy(png, file="densExample.png", height=8, width=10)
dev.off()

# Plot several densities for fixed data observation
mu1 = -33
mu2 = 27
dens1 = dnorm(xGrid, mu1, sig)
dens2 = dnorm(xGrid, mu2, sig)
par(mfrow=c(2,1))
plot(xGrid, trueDens, type='l', xaxs='i', yaxs='i', xaxt='n', xlab='', ylab='',
     yaxt='n', bty='L')
axis(1, labels=c(expression(mu^1), expression(mu^2), expression(mu^2), expression(y[1])),
     at=c(mu, mu1, mu2, y12))
lines(xGrid, dens1)
lines(xGrid, dens2)
abline(v=mu)
abline(v=mu1)
abline(v=mu2)
segments(y12, 0, y12, dnorm(y12, mu, sig), lty=2)
segments(y12, 0, y12, dnorm(y12, mu1, sig), lty=3)
segments(y12, 0, y12, dnorm(y12, mu2, sig), lty=4)

# Plot the resulting likelihood
like = dnorm(xGrid, y12, sig)
plot(xGrid, like, type='l', xaxs='i', yaxs='i', xaxt='n', xlab='', ylab='',
     yaxt='n', bty='L')
axis(1, labels=c(expression(mu^1), expression(mu^2), expression(mu^2), expression(y[1])),
     at=c(mu, mu1, mu2, y12))
abline(v=y12)
segments(mu, 0, mu, dnorm(mu, y12, sig), lty=2)
segments(mu1, 0, mu1, dnorm(mu1, y12, sig), lty=2)
segments(mu2, 0, mu2, dnorm(mu2, y12, sig), lty=2)
dev.copy(pdf, file="likeExample.pdf", height=10, width=8)
dev.off()

#######################################################################################
# Plot likelihood for normal data with unknown sd
#######################################################################################

# Plot several densities for fixed data observation
sig1 = 50
sig2 = 25
dens1 = dnorm(xGrid, mu, sig1)
dens2 = dnorm(xGrid, mu, sig2)
par(mfrow=c(2,1))
yMax = max(max(trueDens), max(dens1), max(dens2))
plot(xGrid, trueDens, type='l', xaxs='i', yaxs='i', xaxt='n', xlab='', ylab='',
     yaxt='n', bty='L', ylim=c(0,yMax))
axis(1, labels=c(expression(mu), expression(y[1])), at=c(mu, y12))
lines(xGrid, dens1)
lines(xGrid, dens2)
abline(v=mu)
segments(y12, 0, y12, dnorm(y12, mu, sig), lty=2)
segments(y12, 0, y12, dnorm(y12, mu, sig1), lty=3)
segments(y12, 0, y12, dnorm(y12, mu, sig2), lty=4)
xDist = max(xGrid)-mu
text(c(mu+0.29*xDist, mu+0.4*xDist, mu+0.7*xDist), c(0.66, 0.4, 0.23)*yMax,
     labels=c(expression(sigma[1]^2), expression(sigma[2]^2), expression(sigma[3]^2)))

# Plot the resulting likelihood (which is an inverse gamma)
alpha = -0.5
beta = ((y12 - mu)^2)/2
scale = 1/sqrt(2*pi)
sigGrid = seq(0.01,3000,length=10000)
like = scale*(sigGrid^(-alpha-1))*exp(-beta/sigGrid)
likeTrue = scale*(sig^(-2*alpha-2))*exp(-beta/sig^2)
like1 = scale*(sig1^(-2*alpha-2))*exp(-beta/sig1^2)
like2 = scale*(sig2^(-2*alpha-2))*exp(-beta/sig2^2)
plot(sigGrid, like, type='l', xaxs='i', yaxs='i', xaxt='n', xlab='', ylab='',
     yaxt='n', bty='L')
axis(1, labels=c(expression(sigma[1]^2), expression(sigma[2]^2), expression(sigma[3]^2)),
     at=c(sig^2, sig1^2, sig2^2))
segments(sig^2, min(like), sig^2, likeTrue, lty=2)
segments(sig1^2, min(like), sig1^2, like1, lty=2)
segments(sig2^2, min(like), sig2^2, like2, lty=2)
dev.copy(pdf, file="likeExample2.pdf", height=10, width=8)
dev.off()
