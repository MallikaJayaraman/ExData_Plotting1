## This script replicates the third plot in the assignment
## Data for this plot is downloaded using electric_EDA. 
## This script may also be called from that file

## uncomment to open data if not opened in electric_EDA
#data_full <- read.table("data/household_power_consumption.txt", sep=";", na.strings="?", header=TRUE)
#data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")
#data_full$Time <- strptime(data_full$Time, format="%H:%M:%S")
#data <- subset(data_full, Date=="2007-02-01"|Date=="2007-02-02")

#replicate third plot
png(filename="plot3.png", width = 480, height = 480)
par(mar=c(3,4,4,2)+0.1)
plot(data$Sub_metering_1, xaxt="n", type="n", ylab="Energy sub metering")
axis(1, at=c(0,1440, 2880), labels=c("Thu", "Fri", "Sat"))
points(data$Sub_metering_1, type="l")
points(data$Sub_metering_2, type="l", col="red")
points(data$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, cex=0.8)
dev.off()
