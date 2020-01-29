

data <- rnorm(n = 1000000, mean = 6, sd = 1.25)
data <- data[data > 0 & data < 12 ]


v <- c(2, 1.5, 1, 0.75, 0.5, 0.25, 0.125, 0.1, 0.05, 0.025)

for (i in v) {
    
    bins <- seq(from=0, to=12, by=i)
    Sys.sleep(0.4)
    hist(data, xaxt="n", yaxt="n", breaks = bins, xlim = c(0, 12),  labels = FALSE, col="grey30", border="white", xlab="Scores", prob=T)
    #abline(h=c(0:6), col="white")
    
}

lines(density(data))



