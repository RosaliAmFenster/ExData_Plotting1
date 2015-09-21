setwd("~/Documents/R_files/exploratory_data_analysis/exdata_data_NEI_data")

#Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#To plot total emissions per year, first subset the dataset per year
year1999 = NEI[NEI$year == 1999,]
year2002 = NEI[NEI$year == 2002,]
year2005 = NEI[NEI$year == 2005,]
year2008 = NEI[NEI$year == 2008,]

#Next use sum to get the total emissions per year
emissions1999 = sum(year1999$Emissions)
emissions2002 = sum(year2002$Emissions)
emissions2005 = sum(year2005$Emissions)
emissions2008 = sum(year2008$Emissions)

#Save results in vector for plotting
results_y= c(emissions1999,emissions2002,emissions2005, emissions2008)
results_x = c(1999,2002,2005,2008)

#Plot
png("plot1.png", width=840, height=480)
plot(results_x, results_y, xlab = c("year"), ylab = c("Total PPM emissions"), main = c("Total emissions decreased in the US"))
dev.off()

