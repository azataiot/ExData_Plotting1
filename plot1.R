
# load the data into the memory
data <- read.csv("clean.csv")
# construct the png file device
png(filename = "plot1.png", width = 480, height = 480)
# create the plot
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="lightblue", border="black")
# close the graphics device
dev.off()