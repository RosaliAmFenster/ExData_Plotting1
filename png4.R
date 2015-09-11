# Project week 1 script for constructing png4

# Set working directory to source file location
setwd("Documents/R_files/exploratory_data_analysis")

# Read in data (read in subset of rawdata, only specified days)
data <- read.table("subset_household_consumption.txt", sep = ";", header = TRUE)

# Have a look at the data
summary(data)

# For the 4.png, 4 plots need to be constructed and then put into 4 panels
# Turn on graphics device png
png(filename = "plot4.png", width = 480, height = 480)

# Specify the par margin argument to create 4 panels
par(mfrow = c(2,2))

# plot 4.1
plot(date_and_time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# plot 4.2
plot(date_and_time, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

# plot 4.3
plot(date_and_time, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(date_and_time, data$Sub_metering_2, type = "l", col = "red")
points(date_and_time, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"), fill = c("black", "red", "blue"))

# plot 4.4
plot (date_and_time, data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()

