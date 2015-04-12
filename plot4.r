## Load data
source('load.R')

## Generating Plot 
par (mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))

#Generate Top left
plot(data$Datetime, data$Global_active_power,
     ylab='Global Active Power', xlab='', type='l')

#Generate Top right
plot(data$Datetime, data$Voltage,
     xlab='datetime', ylab='Voltage', type='l')

#Generate Bottom left
plot(data$Datetime, data$Sub_metering_1, type='l',xlab='', ylab='Energy sub metering')
lines(data$Datetime, data$Sub_metering_2, col='red')
lines(data$Datetime, data$Sub_metering_3, col='blue')
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid', bty='n')

#Generate Bottom right
plot(data$Datetime, data$Global_reactive_power,
     xlab='datetime', ylab='Global_reactive_power', type='l')

## Saving to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
