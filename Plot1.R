## This script replicates the first plot in the assignment
## Data for this plot is downloaded using electric_EDA. 
## This script may also be called from that file

## uncomment to open data if not opened in electric_EDA
#data_full <- read.table("data/household_power_consumption.txt", sep=";", na.strings="?", header=TRUE)
#data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")
#data_full$Time <- strptime(data_full$Time, format="%H:%M:%S")
#data <- subset(data_full, Date=="2007-02-01"|Date=="2007-02-02")

png(filename="plot1.png", width = 480, height = 480)
hist(data$Global_active_power, col="red", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.off()
