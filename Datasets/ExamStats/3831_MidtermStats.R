#setwd("C:/Users/prcyd/Dropbox/Programming---R/RWorkDir")
#getwd()
#list.files()

statsF <- read.csv("Datasets/ExamStats/3881_FinalGrade.csv", header = TRUE)

# Midterm Score Distribution
#hist(stats1$Midterm, 21)
plot(table(stats1$Midterm), type="h", ylim=c(0,5), ylab="Frequency", xlab="Midterm Score", lwd=10, col="grey30")
abline(h=c(1:4), col="grey")
points(table(stats1$Midterm), type="p")


# Midterm Score ~ Homework Score
plot(c(0,60), c(75,95), type = "n", xlab="Homework Cumulative Score", ylab="Midterm Score")
points(stats1$Midterm ~ stats1$HW, pch=19)
reg <- lm(stats1$Midterm ~ stats1$HW)
abline(reg)


# Midterm Score ~ Midterm Time
plot(stats2$Score1 ~ stats2$Time, xlab="Test Completion Time (min)", ylab="Midterm Part1 Score", pch=19)
#plot(c(0,60), c(70,100), type = "n", xlab="Time (min)", ylab="in-Class Midterm Score")
#points(stats1$Midterm ~ stats1$HW)
reg <- lm(stats2$Score1 ~ stats2$Time)
abline(reg)



# Final Score Distribution
#hist(stats3$Grade, 21)
plot(table(statsF$Grade), type="h", ylim=c(0,5), ylab="Frequency", xlab="Final Score", lwd=10, col="grey30")
abline(h=c(1:4), col="grey")
abline(v=c(59, 64,72), col="red")
abline(v=c(76, 79), col="purple")
abline(v=89, col="green")
points(table(statsF$Grade), type="p")





