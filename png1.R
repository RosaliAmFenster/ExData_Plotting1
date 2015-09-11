# Project week 1 script for constructing png1

# Set working directory to source file location
setwd("Documents/R_files/exploratory_data_analysis")

# Read in data (read in subset of rawdata, only specified days)
data <- read.table("subset_household_consumption.txt", sep = ";", header = TRUE)

# Have a look at the data
summary(data)

# Constructing plot, with new definition of title and x labels, set colour to red
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

# Save plot as png1, specifiy width and height in pixel to 480
png(filename = "plot1.png", width = 480, height = 480)
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()