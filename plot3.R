power2 <- read.csv(file = "D:/R Course/power_consumption_01to02_feb2007.csv", header = TRUE, na.strings = "?")

# Plotting variables
par(mfrow = c(1,1), mar = c(3,4,1,1))
plot(power2$DateTime, power2$Sub_metering_1, type = "l", col="black", ylab = "Energy sub metering", xlab = "")
lines(power2$DateTime, power2$Sub_metering_2, type = "l", col = "red") 
lines(power2$DateTime, power2$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering1", "Sub_metering2", "Sub_metering3"), fill = c("black", "red", "blue"))

# Saving the graph in a PNG file
dev.copy(png, "D:/R Course/plot3.png" )
dev.off()
