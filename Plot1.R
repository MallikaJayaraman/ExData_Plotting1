## This script replicates the first plot in the assignment
## Data for this plot is downloaded using electric_EDA. 
## This script may also be called from that file

png(filename="plot1.png", width = 480, height = 480)
hist(data$Global_active_power, col="red", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.off()
