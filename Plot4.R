## This script replicates the fourth plot in the assignment
## Data for this plot is downloaded using electric_EDA. 
## This script may also be called from that file 

png(filename="plot4.png", width = 480, height = 480)
par(mfrow=c(2,2), mar=c(5,4,4,2)+0.1)

#plot 1
plot(data$Global_active_power, type="l", xaxt="n", ylab="Global Active Power", xlab="")
axis(1, at=c(0,1440, 2880), labels=c("Thu", "Fri", "Sat"))

#plot 2
plot(data$Voltage, type="l", xaxt="n", ylab="Voltage", xlab="datetime")
axis(1, at=c(0,1440, 2880), labels=c("Thu", "Fri", "Sat"))

#plot 3
plot(data$Sub_metering_1, xaxt="n", type="n", ylab="Energy sub metering",xlab="")
axis(1, at=c(0,1440, 2880), labels=c("Thu", "Fri", "Sat"))
points(data$Sub_metering_1, type="l")
points(data$Sub_metering_2, type="l", col="red")
points(data$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, cex=0.8)

#plot 4
plot(data$Global_reactive_power, type="l", xaxt="n", ylab="Voltage", xlab="datetime")
axis(1, at=c(0,1440, 2880), labels=c("Thu", "Fri", "Sat"))

dev.off()