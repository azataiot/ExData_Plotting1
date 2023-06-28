# 1. load the data into the memory

data <- read.csv("power.txt", na.strings = "?", sep = ";")

# 2. convert the Date and Time variables to Date/Time classes in R using the  strptime()  and  as.Date() as

# sample Date: 16/12/2006
# sample Time: 17:25:00

# convert date to Date class
# convert time to Time class

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- strptime(data$Time, format = "%H:%M:%S")
data$Time <- format(data$Time, format = "%H:%M:%S")

# 3. We will only be using data from the dates 2007-02-01 and 2007-02-02. Subset the data to include only these dates.

data <- subset(data, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))

# 4. exports the clean data set to the file clean.csv

write.csv(data, "clean.csv", row.names = FALSE)