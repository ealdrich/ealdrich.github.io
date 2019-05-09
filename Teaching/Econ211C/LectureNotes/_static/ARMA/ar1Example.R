setwd("~/Dropbox/Academics/Teaching/Econ211C/S2015/LectureNotes/_static/ARMA/")

###########################################################
# Simulate AR(1) processes for different values of phi
###########################################################

# Number of simulated points
nSim = 1000000;

# Values of phi to consider
phi = c(-0.9, 0, 0.9, 0.99);

# Draw one set of shocks and use for each AR(1)
eps = rnorm(nSim, 0, 1);

# Matrix which stores each AR(1) in columns
y = matrix(0, nrow=nSim, ncol=length(phi));

# Each process is intialized at first shock
y[1,] = eps[1];

# Loop over each value of phi
for(j in 1:length(phi)){
	
	# Loop through the series, simulating the AR(1) values
	for(i in 2:nSim){
		y[i,j] = phi[j]*y[i-1,j]+eps[i]
	}
}

###########################################################
# Plot the AR(1) realizations for each phi
###########################################################

# Only plot a subset of the whole simulation
plotInd = 1:1000

# Specify a plot grid
png(file="ar1ExampleSeries.png", height=600, width=1000)
par(mfrow=c(2,2))

# Loop over each value of phi
for(j in 1:length(phi)){
  plot(plotInd,y[plotInd,j], type='l', xlab='Time Index',
  	   ylab="Y", main=paste(expression(phi), " = ", phi[j], sep=""))
  abline(h=0)
}
graphics.off()

###########################################################
# Plot the sample ACFs for each AR(1) simulation
# For large nSim, sample ACFs are close to true ACFs
###########################################################

# Specify a plot grid
png(file="ar1ExampleACF.png", height=600, width=1000)
par(mfrow=c(2,2))

# Loop over each value of phi
for(j in 1:length(phi)){
  acf(y[,j], main=paste(expression(phi), " = ", phi[j], sep=""))
}
graphics.off()