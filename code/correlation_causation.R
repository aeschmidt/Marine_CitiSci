# Brian Stock
# July 21, 2014

# Mirage correlations A simple non-linear system can abruptly switch between
# positive correlation, negative correlation, or zero correlation And this is
# just about as simple as it gets... only 2 variables, we know the correct
# equation and parameters. Figure 1 in Sugihara et al. 2012. Detecting causality
# in complex ecosystems. Science 338: 496-500.

# Time
n.steps <- 1000

# Initial conditions
x <- rep(0.6,n.steps)
y <- rep(0.6,n.steps)

# Set parameters (values from Fig 1)
rx <- 3.8
ry <- 3.5
beta_xy <- 0.02
beta_yx <- 0.1

# Define non-linear system (Equation 1)
for(t in 1:(n.steps-1)){
	x[t+1] <- x[t] * (rx - rx*x[t] - beta_xy*y[t])
	y[t+1] <- y[t] * (ry - ry*y[t] - beta_yx*x[t])
}

# Plot some of x and y
t <- 100:150
plot(t,x[t],type='l',lwd=2,col='red')
lines(t,y[t],type='l',lwd=2,col='blue')

r <- 1:50
plot(r, x[r], type = 'l', lwd = 2, col='red')
lines(r,y[r],type='l',lwd=2,col='blue')

