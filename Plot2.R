## This script replicates the second plot in the assignment
## Data for this plot is downloaded using electric_EDA. 
## This script may also be called from that file

png(filename="plot2.png", width = 480, height = 480)
par(mar=c(3,4,4,2)+0.1)
plot(data$Global_active_power, type="l", xaxt="n", ylab="Global Active Power (kilowatts)")
axis(1, at=c(0,1440, 2880), labels=c("Thu", "Fri", "Sat"))
dev.off()
