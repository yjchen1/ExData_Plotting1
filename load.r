#this is created so that code can be reuse

#set location
getwd()
setwd("Module4")

## Read file
filename <-file("household_power_consumption.txt")
readfile <- read.csv(filename, header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
readfile$Date <- as.Date(readfile$Date, format="%d/%m/%Y")

## Subset data
data <- subset(readfile, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(readfile)

## Convert dates
cdatetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(cdatetime)