# load the data into the memory
data <- read.csv("clean.csv")
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- as.POSIXct(data$DateTime, format = "%Y-%m-%d %H:%M:%S") # correct the date format here
# construct the png file device
png(filename = "plot2.png", width = 480, height = 480)
# create the plot
plot(data$DateTime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
# close the graphics device
dev.off()
