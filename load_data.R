# 1. Loading the data

url <- "D:/R Course/household_power_consumption.txt"
##############################################################################
# Dataset size: 2,075,259 * 9 = 18,677,331 records
# 18,677,331 * 8 = 149,418,648 bytes = 149.42 Mb
########################################################################
power <- read.table(file = url, header = TRUE, sep = ";", na.strings = "?")
object.size(power) # Dataset size is 150,050,248 bytes = 150.05 MB

power2 <- power[(power$Date == "1/2/2007" | power$Date == "2/2/2007"), ]

power2$DateTime <- as.POSIXct(paste(power2$Date, power2$Time), format="%d/%m/%Y %H:%M:%S")
power2$Date <- as.Date(power2$Date, format = "%d/%m/%Y")
power2$Time <- strptime(power2$Time, format = "%T")


write.csv(power2, "D:/R Course/power_consumption_01to02_feb2007.csv" )
