## Load data
source('load.R')

## Generating Plot 
plot(data$Datetime,data$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(data$Datetime, data$Sub_metering_2, col='red')
lines(data$Datetime, data$Sub_metering_3, col='blue')
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')

## Saving to file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()