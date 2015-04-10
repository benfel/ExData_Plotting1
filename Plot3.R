#plot3.R
png("plot3.png", width=480, height=480)
plot(powernew$Date_Time, powernew$Sub_metering_1, type="l",xlab= "",ylab="Energy sub Metering")
lines(powernew$Date_Time, powernew$Sub_metering_2,col="red")
lines(powernew$Date_Time, powernew$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,col=c("black","red","blue"))
dev.off()