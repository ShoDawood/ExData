source("loadData.r")

hist(house_power$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.copy(device = png, filename="plot1.png", width=480, height=480)
dev.off()
