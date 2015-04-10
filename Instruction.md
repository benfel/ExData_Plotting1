# Instruction before running the 4 plot.R script

##Run the following code below

###Store the data from household_power_consumption.txt file
power <- read.table("/Users/ruben.felomino/Documents/Unicorn/R Working Files/household_power_consumption.txt",header=T,sep=';')[-1,]

###Convert the date provdided to a Date format
power$Date <- strptime(as.character(power$Date),format="%d/%m/%Y")

###Subsetting the data within the dates 2007-02-01 and 2007-02-02.
powernew <- subset(power,Date=='2007-02-01' | Date=='2007-02-02')

###Adding new column Date_Time to powernew by merging Date and Time column.
powernew$Date_Time <- paste(as.character(powernew$Date), as.character(powernew$Time))

###Re-arranging and removing Date and Time column
powernew <- powernew[,c(10,3,4,5,6,7,8,9)]

###Convert other Factor to the correct format
powernew$Global_active_power <- as.numeric(as.character(powernew$Global_active_power))
powernew$Global_reactive_power <- as.numeric(as.character(powernew$Global_reactive_power))
powernew$Voltage <- as.numeric(as.character(powernew$Voltage))
powernew$Global_intensity <- as.numeric(as.character(powernew$Global_intensity))
powernew$Sub_metering_1 <- as.numeric(as.character(powernew$Sub_metering_1))
powernew$Sub_metering_2 <- as.numeric(as.character(powernew$Sub_metering_2))
ppowernew$Date_Time <- strptime(as.character(powernew$Date_Time),format="%Y-%m-%d %H:%M:%S")


