setwd("C:/Users/Yuriy/Dropbox/Programming---R/RWorkDir/") 

d <- read.csv("C:/Users/Yuriy/Dropbox/Programming---R/RWorkDir/OPM94.csv", header = TRUE)
age <- d$age
sal <- d$sal




meanAge <- mean(age, na.rm = TRUE)
sdAge <- sd(age, na.rm = TRUE)
hist(age, breaks = 5)
abline(v=meanAge, lty = "solid", col = "red", lwd = 2 )
abline(v=c(meanAge-sdAge, meanAge+sdAge ), lty = "dashed", col = "red", lwd = 2)

ageBar1 <- mean(sample(age, 6))
abline(v=ageBar1, lty = "solid", col = "blue", lwd = 2)


ageBar2 <- mean(sample(age, 99))
abline(v=ageBar2, lty = "solid", col = "green", lwd = 2)




meanAge
sdAge

#hist(sal, breaks = 5)
#mean(sal, na.rm = TRUE)






