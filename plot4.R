library(lubridate)
power<-read.csv('household_power_cons_subset_feb1and2_2007.csv')
date_time<-paste(power$Date,power$Time, sep = " ")
posix_date_time<-dmy_hms(date_time)

png(file = "plot4.png",width = 480, height = 480, units = "px")
par(mfrow=c(2,2))


#plot in upper left
 plot(posix_date_time,power$Global_active_power, type='l',xlab="",ylab="Global Active Power")
 
 #plot in upper right
 plot(posix_date_time,power$Voltage,xlab='datetime',ylab='Voltage',type='l')
   
 #plot in lower left 
max<-max(max(power$Sub_metering_1),max(power$Sub_metering_2),max(power$Sub_metering_3))
plot(posix_date_time,power$Sub_metering_1,ylim=c(0,max),xlab='',ylab='',col="black",type='l',xaxt='n')
par(new=T)
plot(posix_date_time,power$Sub_metering_2,ylim=c(0,max),xlab='',ylab='',col="red",type='l',xaxt='n')
par(new=T)
plot(posix_date_time,power$Sub_metering_3,ylim=c(0,max),xlab='',ylab='Energy sub metering',col="blue",type='l')
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty = "n")

#plot in lower right
 plot(posix_date_time,power$Global_reactive_power,xlab='datetime',ylab='Global_reactive_power',type='l')


dev.off()