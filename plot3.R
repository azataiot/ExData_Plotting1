# load the data into the memory
data <- read.csv("clean.csv")
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- as.POSIXct(data$DateTime, format = "%Y-%m-%d %H:%M:%S") # correct the date format here
# construct the png file device
png(filename = "plot3.png", width = 480, height = 480)
# create the plot
plot(data$DateTime, data$Sub_metering_1, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)",col = "black")
lines(data$DateTime, data$Sub_metering_2, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", col = "red")
lines(data$DateTime, data$Sub_metering_3, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
# close the graphics device
dev.off()
