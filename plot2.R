library(lubridate)
setwd("C:/Users/xwen/Desktop/r-jhu/ExData_Plotting1")
hpc_clip <- read.table("household_power_consumption_clip.txt",header = TRUE,sep = ";")
hpc_clip$Date_Time <- paste(hpc_clip$Date,hpc_clip$Time)
hpc_clip$Date_Time <- dmy_hms(hpc_clip$Date_Time)
png(filename="plot2.png")
plot(hpc_clip$Date_Time,hpc_clip$Global_active_power,type = "l",xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()