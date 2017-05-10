setwd("C:/Users/xwen/Desktop/r-jhu/ExData_Plotting1")
hpc <- read.table("household_power_consumption.txt",header = TRUE,sep = ";")
hpc_clip <- subset(hpc,Date == "1/2/2007" | Date == "2/2/2007")
write.table(hpc_clip,"household_power_consumption_clip.txt", row.names = FALSE, sep = ";")