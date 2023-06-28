# load the data into the memory
data <- read.csv("clean.csv")
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- as.POSIXct(data$DateTime, format = "%Y-%m-%d %H:%M:%S") # correct the date format here
# construct the png file device
png(filename = "plot4.png", width = 480, height = 480)
# we need 2x2 plots
par(mfrow=c(2,2))
# create the plot
# first plot
plot(data$DateTime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
# second plot
plot(data$DateTime, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
# third plot
plot(data$DateTime, data$Sub_metering_1, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)",col = "black")
lines(data$DateTime, data$Sub_metering_2, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", col = "red")
lines(data$DateTime, data$Sub_metering_3, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
# fourth plot
plot(data$DateTime, data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
# close the graphics device
dev.off()
