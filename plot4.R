power2 <- read.csv(file = "D:/R Course/power_consumption_01to02_feb2007.csv", header = TRUE, na.strings = "?")

# Plotting variables
par(mfrow = c(2,2), mar = c(1,4,2,2), oma = c(0,0,0,0))
plot(power2$DateTime, power2$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = 
            "")
plot(power2$DateTime, power2$Voltage, type = "l", ylab = "Voltage", xlab = "")
plot(power2$DateTime, power2$Sub_metering_1, type = "l", col="black", ylab = "Energy sub metering", xlab = "")
lines(power2$DateTime, power2$Sub_metering_2, type = "l", col = "red") 
lines(power2$DateTime, power2$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), fill = c("black", "red", "blue"))
plot(power2$DateTime, power2$Global_reactive_power, type = "l", ylab = "Global reactive power", xlab = "")

# Saving the graph in a PNG file
dev.copy(png, "D:/R Course/plot2.png" )
dev.off()
