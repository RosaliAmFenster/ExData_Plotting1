# Project week 1 script for constructing png3

# Set working directory to source file location
setwd("Documents/R_files/exploratory_data_analysis")

# Read in data (read in subset of rawdata, only specified days)
data <- read.table("subset_household_consumption.txt", sep = ";", header = TRUE)

# Have a look at the data
summary(data)# Plot submetering against date and time, using the line type plot
png(filename = "plot3.png", width = 480, height = 480)
plot(date_and_time, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(date_and_time, data$Sub_metering_2, type = "l", col = "red")
points(date_and_time, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"), fill = c("black", "red", "blue"))
dev.off()
