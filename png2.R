# Project week 1 script for constructing png2

# Set working directory to source file location
setwd("Documents/R_files/exploratory_data_analysis")

# Read in data (read in subset of rawdata, only specified days)
data <- read.table("subset_household_consumption.txt", sep = ";", header = TRUE)

# Have a look at the data
summary(data)

# Convert date and time to a specific format that allows for plotting
date_and_time <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# Plot global active power against date and time, using the line type plot
png(filename = "plot2.png", width = 480, height = 480)
plot(date_and_time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()