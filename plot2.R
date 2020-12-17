power2 <- read.csv(file = "D:/R Course/power_consumption_01to02_feb2007.csv", header = TRUE, na.strings = "?")

# Plotting variables
par(mfrow = c(1,1), mar = c(3,4,2,2))
plot(power2$DateTime, power2$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

# Saving the graph in a PNG file
dev.copy(png, "D:/R Course/plot2.png" )
dev.off()

