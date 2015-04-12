## Load data
source('load.R')

## Generating Plot 
plot(data$Global_active_power~data$Datetime,
     ylab="Global Active Power (kilowatts)", xlab="", type="l")

## Saving to file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()