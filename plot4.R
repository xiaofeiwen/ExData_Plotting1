library(lubridate)
setwd("C:/Users/xwen/Desktop/r-jhu/ExData_Plotting1")
hpc_clip <- read.table("household_power_consumption_clip.txt",header = TRUE,sep = ";")
hpc_clip$Date_Time <- paste(hpc_clip$Date,hpc_clip$Time)
hpc_clip$Date_Time <- dmy_hms(hpc_clip$Date_Time)
png(filename="plot4.png")
par(mfrow=c(2,2),cex.lab=1,cex.axis=1)
# 1
plot(hpc_clip$Date_Time,hpc_clip$Global_active_power,type = "l",xlab = "", ylab = "Global Active Power")
# 2
plot(hpc_clip$Date_Time,hpc_clip$Voltage,type = "l",xlab = "datetime", ylab = "Voltage")
# 3
plot(hpc_clip$Date_Time,hpc_clip$Sub_metering_1,type = "l",xlab = "", ylab = "Energy sub metering",col="black")
lines(hpc_clip$Date_Time,hpc_clip$Sub_metering_2,type = "l",xlab = "", ylab = "Energy sub metering",col="red")
lines(hpc_clip$Date_Time,hpc_clip$Sub_metering_3,type = "l",xlab = "", ylab = "Energy sub metering",col="blue")
legend("topright",col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,
       cex=0.95,bty = "n")
# 4
plot(hpc_clip$Date_Time,hpc_clip$Global_reactive_power,type = "l",xlab = "datetime", ylab = "Global_reactive_power")
dev.off()