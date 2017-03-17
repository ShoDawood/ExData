 rm(list=ls())
  tbl = read.table(file = "household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")

  tbl$Time = strptime(paste(tbl$Date,tbl$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")
  tbl$Date = as.Date(tbl$Date,format = "%d/%m/%Y")

  tbl = rbind(subset(tbl,Date==as.Date("2007-02-01")),subset(tbl,Date==as.Date("2007-02-02")))

  png(filename = "ExData_Plotting1/plot3.png", width= 480, height = 480, units = "px")
  with(tbl,plot(Time,Sub_metering_1,type="n",ylab="Energy sub metering",xlab=""))
  with(tbl,lines(Time,Sub_metering_1,col="black"))
  with(tbl,lines(Time,Sub_metering_2,col="red"))
  with(tbl,lines(Time,Sub_metering_3,col="blue"))
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         lty=1,col=c("black","red","blue"))
  dev.off()
