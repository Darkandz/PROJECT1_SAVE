df<-read.table("household_power_consumption.txt",header=TRUE,sep=';',dec='.',na.strings='?')
df$Date<-as.Date(df$Date,format='%d/%m/%Y')
df$Time<-format(strptime(df$Time,format="%H:%M:%S"),"%H:%M:%S")
df1<-subset(df,Date>="2007-02-01" & Date <="2007-02-02")
png(file = "plot1.png", width = 480, height = 480, bg = "transparent")
hist(df1$Global_active_power,
     col='red',
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()
