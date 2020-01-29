##setwd("C:/Users/admin/Dropbox/Programming---R/RWorkDir/PMAP_4041-2")   #HomePC DROPBOX
#setwd("C:/Users/Yuriy/Dropbox/Programming---R/RWorkDir/PMAP_4041-2")   #WorkPC DROPBOX
#getwd()
#list.files()

grades <- read.csv("Datasets/ExamStats/PMAP_4041-2/Grades.csv", header = TRUE)
#grades <- read.csv("Grades.csv", header = TRUE)

#Xbar <- mean(grades$Quiz3, na.rm = TRUE)
#M <- median(grades$Quiz3, na.rm = TRUE)
#table(grades$Quiz1)

#1###################################################################################################

bins <- seq(from=1.25, to=12, by=0.5)
binslabels <- seq(from=1, to=12, by=0.5)
hist(grades$Quiz2, xaxt="n", breaks = bins, ylim = c(0, 5), xlim = c(2, 12),  labels = FALSE, col="grey30", border="white", ylab="Counts", xlab="Quiz1 Scores")
abline(h=c(0:6), col="white", lwd=1)
axis( side=1, at=binslabels, labels=as.character(binslabels),  tcl=-0.5 )

#2###########################################################################
bins <- seq(from=1.5, to=12, by=1)
binslabels <- seq(from=1, to=12, by=0.5)
hist(grades$Quiz2, xaxt="n", breaks = bins, ylim = c(0, 7), xlim = c(2, 12),  labels = FALSE, col="grey30", border="white", ylab="Counts", xlab="Quiz1 Scores")
abline(h=c(0:6), col="white", lwd=1)
axis( side=1, at=binslabels, labels=as.character(binslabels),  tcl=-0.5 )

#####################################################################################################

abline(v=c(Xbar, M), col=c("red", "green"), lwd=3)

#####################################################################################################

# Quiz 2 ############################################################################################

bins <- seq(from=0, to=12, by=1)
binslabels <- seq(from=0, to=12, by=1)
hist(grades$Quiz2, xaxt="n", breaks = bins, ylim = c(0, 5), xlim = c(0, 12),  labels = FALSE, col="grey30", border="white", ylab="Counts", xlab="Quiz 2 Scores")
abline(h=c(0:6), col="white", lwd=1)
axis( side=1, at=binslabels, labels=as.character(binslabels),  tcl=-0.5 )

# Quiz 3 ############################################################################################

bins <- seq(from=0, to=12, by=1)
binslabels <- seq(from=0, to=12, by=1)
#hist(grades$Quiz3, xaxt="n", breaks = bins, ylim = c(0, 7), xlim = c(0, 10),  labels = FALSE, col="grey30", border="white", ylab="Counts", xlab="Quiz 3 Scores")
hist(grades$Quiz3, xaxt="n", breaks = bins, xlim = c(0, 10),  labels = FALSE, col="grey30", border="white", ylab="Density", xlab="Quiz 3 Scores", prob=T)
lines(density(grades$Quiz3, na.rm = TRUE), lwd=2, col = "red")
abline(h=c(0:6), col="white", lwd=1)
axis( side=1, at=binslabels, labels=as.character(binslabels),  tcl=-0.5 )

# Quiz 4 ############################################################################################

bins <- seq(from=0.5, to=12, by=1)
binslabels <- seq(from=0, to=12, by=1)
#hist(grades$Quiz4, xaxt="n", breaks = bins, ylim = c(0, 7), xlim = c(0, 10),  labels = FALSE, col="grey30", border="white", ylab="Counts", xlab="Quiz 3 Scores")
hist(grades$Quiz4, xaxt="n", breaks = bins, xlim = c(0, 10),  labels = FALSE, col="grey30", border="white", ylab="Density", xlab="Quiz 4 Scores", prob=T)
lines(density(grades$Quiz4, na.rm = TRUE), lwd=2, col = "red")
abline(h=c(0:6), col="white", lwd=1)
axis( side=1, at=binslabels, labels=as.character(binslabels),  tcl=-0.5 )

# Quiz 5 ############################################################################################

bins <- seq(from=0.5, to=12, by=1)
binslabels <- seq(from=0, to=12, by=1)
#hist(grades$Quiz5, xaxt="n", breaks = bins, ylim = c(0, 7), xlim = c(0, 10),  labels = FALSE, col="grey30", border="white", ylab="Counts", xlab="Quiz 3 Scores")
hist(grades$Quiz5, xaxt="n", breaks = bins, xlim = c(0, 10),  labels = FALSE, col="grey30", border="white", ylab="Density", xlab="Quiz 5 Scores", prob=T)
lines(density(grades$Quiz5, na.rm = TRUE), lwd=2, col = "red")
abline(h=c(0:6), col="white", lwd=1)
axis( side=1, at=binslabels, labels=as.character(binslabels),  tcl=-0.5 )


# Midterm ############################################################################################

bins <- seq(from=0.5, to=102, by=2)
binslabels <- seq(from=0, to=102, by=1)
#hist(grades$Quiz5, xaxt="n", breaks = bins, ylim = c(0, 7), xlim = c(0, 10),  labels = FALSE, col="grey30", border="white", ylab="Counts", xlab="Quiz 3 Scores")
hist(grades$Midterm, xaxt="n", breaks = bins, xlim = c(0, 100),  labels = FALSE, col="grey30", border="white", ylab="Density", xlab="Quiz 5 Scores", prob=T)
lines(density(grades$Midterm, na.rm = TRUE), lwd=2, col = "red")
#abline(h=c(0:6), col="white", lwd=1)
axis( side=1, at=binslabels, labels=as.character(binslabels),  tcl=-0.5 )

#####################################################################################################






table(grades$Quiz2)




















# DISCRETE FEMALE-MALE:
male <- rep(1, 10)
female <- rep(0, 10)
d <- c(female, male)
barplot(table(d), space = 0.01)


# DISCRETE GRADES-UNIFORM: 
scores <- c(1,1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9)
#scores = rep(1:9, 2)
#barplot(table(scores), space = 0.01, col="grey60", border="white", ylab="Counts", xlab="Test Scores")
#abline(h=c(0:10), col="white", lwd=0.1)

hist(scores)
hist(scores, breaks = 10, ylim = c(0, 5), xlim = c(0, 11),  labels = FALSE, col="grey30", border="white", ylab="Counts", xlab="Quiz1 Scores")


table(scores)

#################################################################################

c1 <- sort(round(rnorm(15, mean = 20, sd = 5 )))
c1
median(c1)
quantile(c1)


c2 <- sort(round(rnorm(15, mean = 22, sd = 6 )))
c2
median(c2)
quantile(c2)


#barplot(table(grades$Quiz1), xlim = c(2, 11), ylim=c(0,5), ylab="Frequency", xlab="Quiz1 Score", col="grey50")
#plot(table(grades$Quiz1), type="h", ylim=c(0,5), ylab="Frequency", xlab="Final Score", lwd=10, col="grey30")
#abline(h=c(1:4), col="grey")
#abline(v=c(76, 79), col="purple")
#abline(v=89, col="green")
#points(table(grades$Quiz1), type="p")

#require(ggplot2)
#ggplot(grades, aes(x = Quiz1)) + geom_dotplot(binwidth=0.8, method='histodot')   
#ggplot(grades, aes(x = Quiz1)) + geom_dotplot()
#ggplot(mtcars, aes(x = mpg)) + geom_dotplot()










