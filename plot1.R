setwd("C:/Users/xwen/Desktop/r-jhu/ExData_Plotting1")
hpc_clip <- read.table("household_power_consumption_clip.txt",header = TRUE,sep = ";")
png(filename="plot1.png")
hist(hpc_clip$Global_active_power,col = "red",main="Global Active Power",
     xlim = c(0,6),ylim = c(0,1200),xlab = "Global Active Power (kilowatts)",breaks = 12,xaxt="n")
axis(side = 1, at = c(0,2,4,6))
dev.off()