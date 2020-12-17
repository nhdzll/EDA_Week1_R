power <- read.csv(file = "D:/R Course/power_consumption_01to02_feb2007.csv", header = TRUE, na.strings = "?")

hist(power$Global_active_power, col = "red", main = "Global active power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, "D:/R Course/plot1.png" )
dev.off()
