# ExData

library(RCurl)
file1 <- 'household_power_consumption.txt'


 if(length(dir(".", pattern=file1)) == 0 ){
  download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', destfile = 'power.zip', method = 'curl')
  unzip('power.zip')
}
 

line_start <- 66638
line_end <- 69517

if(line_end == 0){
filecontent <- readLines(file1)
print("Estimated data size: ")
print(object.size(filecontent))
  
  # from 2007-02-01
  line_start <- head(grep('^1.2.2007', filecontent), 1)
  print("Line start: ")
  print(line_start)  

line_end <- tail(grep('^2.2.2007', filecontent), 1)
 print("Line end: ")
 print(line_end)

rm(filecontent)
}

house_power_header <- read.csv(file1, nrows=1, sep = ';')

house_power <- read.csv(file1, skip = line_start - 1, nrows=line_end - line_start, header = F, sep = ';'
 str(house_power)
 head(house_power)
 tail(house_power)
 
 names(house_power) <- names(house_power_header)
 rm(house_power_header)

 house_power$timestamp <- strptime(paste(house_power$Date, house_power$Time), "%d/%m/%Y %H:%M:%S")

 class(house_power$timestamp)
