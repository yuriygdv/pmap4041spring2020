


n     <- 5                    # length of vector
#x1    <- rnorm(n, 1, 1)        # fixed given data
#x2    <- rnorm(n, 2, 0.5)      # new random data

x1    <- rnorm(n, 10, 3)        # fixed given data
x2    <- rnorm(n, 10, 1)      # new random data

rho   <- -0.99                   # desired correlation = cos(angle)
theta <- acos(rho)             # corresponding angle
X     <- cbind(x1, x2)         # matrix
Xctr  <- scale(X, center=TRUE, scale=FALSE)   # centered columns (mean 0)

Id   <- diag(n)                               # identity matrix
Q    <- qr.Q(qr(Xctr[ , 1, drop=FALSE]))      # QR-decomposition, just matrix Q
P    <- tcrossprod(Q)          # = Q Q'       # projection onto space defined by x1
x2o  <- (Id-P) %*% Xctr[ , 2]                 # x2ctr made orthogonal to x1ctr
Xc2  <- cbind(Xctr[ , 1], x2o)                # bind to matrix
Y    <- Xc2 %*% diag(1/sqrt(colSums(Xc2^2)))  # scale columns to length 1

x <- Y[ , 2] + (1 / tan(theta)) * Y[ , 1]     # final new vector
cor(x1, x) 

plot(x1, x)
abline(lm(x ~ x1))









