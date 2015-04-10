#plot4.R
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2)) 
with(powernew,
{
	plot(powernew$Date_Time, powernew$Global_active_power, type="l",xlab= "",ylab="Global Active Power")
	plot(powernew$Date_Time, powernew$Voltage, type="l",xlab= "datetime",ylab="Voltage")
	plot(powernew$Date_Time, powernew$Sub_metering_1, type="l",xlab= "",ylab="Energy sub Metering")
    lines(powernew$Date_Time, powernew$Sub_metering_2,col="red")
    lines(powernew$Date_Time, powernew$Sub_metering_3,col="blue")
    legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,col=c("black","red","blue"))
    plot(powernew$Date_Time, powernew$Global_reactive_power, type="l",xlab= "datetime",ylab="Global_reactive_power")
})
dev.off()
