## This script creates exploratory graphics for the Electric Power Consumption Dataset 
## from the UC Irvine Machine Learning Repository
## Scripts for each graphic are stored in seperate files, but called from this file

#load libraries
library(lubridate)

#create directory for data if does not exist
if (!dir.exists("data")){
    dir.create("data")
}

#download data if does not exist
if (!file.exists("data/ElectricPower.zip")){
    download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
                  destfile = "data/ElectricPower.zip", method = "curl")
    downloadDate <- base::date()
}

#unzip, read in, format, and subset data 2007-02-01 and 2007-02-02
unzip("data/ElectricPower.zip", exdir="data")
data_full <- read.table("data/household_power_consumption.txt", sep=";", na.strings="?", header=TRUE)
data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")
data_full$Time <- strptime(data_full$Time, format="%H:%M:%S")
data <- subset(data_full, Date=="2007-02-01"|Date=="2007-02-02")

#replicate first plot
source("Plot1.R")

#replicate second plot
source("Plot2.R")

#replicate third plot
source("Plot3.R")

#replicate fourth plot
source("Plot4.R")
