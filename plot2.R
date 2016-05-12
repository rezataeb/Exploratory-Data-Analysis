datafile <- read.table("household_power_consumption.txt",header=TRUE, sep=";")
targetdata <- subset(datafile,datafile$Date %in% c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(targetdata$Date, targetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globactpow <- as.numeric(targetdata$Global_active_power)
globactpowkilo <- globactpow/1000
png("plot2.png", width=480, height=480)
plot(datetime, globactpowkilo, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()