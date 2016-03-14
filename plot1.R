power<-read.csv('household_power_cons_subset_feb1and2_2007.csv')
png(file = "plot1.png",width = 480, height = 480, units = "px")
hist(power$Global_active_power,xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power",col="red")
dev.off()