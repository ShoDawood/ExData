  rm(list=ls())
# Load the Dataset
  tbl = read.table(file = "household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
# Convert the Time Field to Time format and the Date Field to Date format
  tbl$Time = strptime(paste(tbl$Date,tbl$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")
  tbl$Date = as.Date(tbl$Date,format = "%d/%m/%Y")
# Subset the Data
  tbl = rbind(subset(tbl,Date==as.Date("2007-02-01")),subset(tbl,Date==as.Date("2007-02-02")))
# Create a Graphics Device and Plot the Data
  png(filename = "ExData_Plotting1/plot1.png", width= 480, height = 480, units = "px")
  hist(tbl$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)",
       col = "red")
  dev.off()
