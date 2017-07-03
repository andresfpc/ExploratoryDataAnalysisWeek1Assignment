setwd("D:/DSpecialization/ExDataAnalysis/Week1/")

source("dataLoad.R")

names(eData)

png(filename = "plot2.png")

plot(eData$Global_active_power~eData$DateTime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()
