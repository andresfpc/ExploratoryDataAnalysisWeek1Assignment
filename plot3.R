setwd("D:/DSpecialization/ExDataAnalysis/Week1/")

source("dataLoad.R")

names(eData)

png(filename="plot3.png")

plot(eData$Sub_metering_1~eData$DateTime, col = "black", type = "l", ylab = "Energy sub metering", xlab = "")
lines(eData$Sub_metering_2~eData$DateTime, col = "red")
lines(eData$Sub_metering_3~eData$DateTime, col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1, 1, 1))

dev.off()
