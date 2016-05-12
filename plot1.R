datafile <- read.table("household_power_consumption.txt",header=TRUE, sep=";")
targetdata <- subset(datafile,datafile$Date %in% c("1/2/2007","2/2/2007"))
globactpow <- as.numeric(targetdata$Global_active_power)
globactpowkilo <- globactpow/1000
png("plot1.png", width=480, height=480)
globalactivepowerhist <- hist(globactpowkilo, main="Global Active Power", col="red" , xlab="Global Active Power(kilowatts))
dev.off()

