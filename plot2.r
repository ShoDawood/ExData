plot(x=house_power$timestamp, y=house_power$Global_active_power, type="l", main="Global Active Power x Day", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(device = png, filename="plot2.png", width=480, height=480)
dev.off()
