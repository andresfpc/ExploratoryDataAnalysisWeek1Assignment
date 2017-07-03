setwd("D:/DSpecialization/ExDataAnalysis/Week1/")

source("dataLoad.R")

names(eData)

png(filename="plot1.png")

hist(eData$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")

dev.off()