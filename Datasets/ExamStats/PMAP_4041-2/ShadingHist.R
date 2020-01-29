draws <- rnorm(1000)
densf <- density(draws)
plot(densf)
q75 <- quantile(draws, .75)
q95 <- quantile(draws, .95)
## 1 ##
x1 <- min(which(dens$x >= q75))  
x2 <- max(which(dens$x <  q95))
with(dens, polygon(x=c(x[c(x1,x1:x2,x2)]), y= c(0, y[x1:x2], 0), col="gray"))
## 2 ##
#x <- seq(-3, 3, length.out = 100)
#curve(dnorm(x,0,1), from=-4, to=4)
######################################################################################################################
######################################################################################################################

# INPUTS: #

distrMean <- 8
distrSD <- 2

xLow <- 6
xHigh <- 7

# FUNCTIONS: #
myNormCurve <- function(distrMean, distrSD, xLow, xHigh) {
  range <- seq(xLow,xHigh,length.out = 100)
  cord.x <- c(xLow, range, xHigh) 
  cord.y <- c(0,dnorm(range, distrMean, distrSD),0) 
  curve(dnorm(x,distrMean,distrSD),xlim=c(distrMean-3*distrSD,distrMean+3*distrSD),main='Density Curve', bty="n", xaxt="n")
  abline(h=0)
  polygon(cord.x,cord.y,col='grey50', border = NA)
  axis( side=1, at= c(xLow,xHigh, distrMean-3*distrSD, 0, distrMean+3*distrSD), labels=as.character(c(xLow,xHigh, distrMean-3*distrSD, 0, distrMean+3*distrSD)),  tcl=-0.5 )
}

myNormCurve(distrMean, distrSD, xLow, xHigh)


myStandardNormCurve <- function(distrMean, distrSD, xLow, xHigh) {
  zLow <- (xLow-distrMean)/distrSD
  zHigh <- (xHigh-distrMean)/distrSD
  range <- seq(zLow,zHigh,0.01)
  cord.x <- c(zLow, range, zHigh) 
  cord.y <- c(0,dnorm(range),0)
  curve(dnorm(x,0,1),xlim=c(-3,3),main='Normal Density', bty="n", xaxt="n")
  abline(h=0)
  polygon(cord.x,cord.y,col='grey50', border = NA)
  axis( side=1, at= c(zLow,zHigh, -3, 0, 3), labels=as.character(c(zLow,zHigh, -3, 0, 3)),  tcl=-0.5 )
  
}

myStandardNormCurve(distrMean, distrSD, xLow, xHigh)

###################################################################################################################

xLow <- -2
xHigh <- -1
range <- seq(xLow,xHigh,0.01)

cord.x <- c(xLow, range, xHigh) 
cord.y <- c(0,dnorm(range),0) 

curve(dnorm(x,0,1),xlim=c(-3,3),main='Normal Density', bty="n", xaxt="n")
abline(h=0)
polygon(cord.x,cord.y,col='grey50', border = NA)
axis( side=1, at= c(xLow,xHigh, -3, 0, 3), labels=as.character(c(xLow,xHigh, -3, 0, 3)),  tcl=-0.5 )

p1 <- pnorm(xHigh)
p2 <- pnorm(xHigh) - pnorm(xLow)
p3 <- pnorm(xHigh, lower.tail = FALSE)


#str(densf)
