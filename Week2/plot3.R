setwd("~/Documents/R_files/exploratory_data_analysis/exdata_data_NEI_data")

#Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#filter dataset first for fips = 24510
fips = NEI[NEI$fips == "24510",]

#sum data per year for each type
sum_data <- aggregate(Emissions ~ year + type, fips, sum)

#load ggplot2 library
library(ggplot2)
png("plot3.png", width=640, height=480)
plot = ggplot(data = sum_data, aes(year, Emissions, colour = type))
plot = plot + geom_line() +
              ylab(expression('Total PM'[2.5]*" Emissions")) +
              ggtitle('Total Emissions in Baltimore City, Maryland (fips == "24510") from 1999 to 2008')
print(plot)
dev.off()

png("plot3.png", width=640, height=480)
g <- ggplot(aggregatedTotalByYearAndType, aes(year, Emissions, color = type))
g <- g + geom_line() +
  xlab("year") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle('Total Emissions in Baltimore City, Maryland (fips == "24510") from 1999 to 2008')
print(g)
dev.off()