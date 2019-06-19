library(ggplot2)
setwd("D:/Education/IRELAND/NCI/Moodle Documents/SEM 2/PFDA/Project/Final/Project final/visualization new")
one<-read.csv('1.csv')
two<-read.csv('2.csv')
three<-read.csv('3.csv')
four<-read.csv('4.csv')
five<-read.csv('5.csv')
six<-read.csv('6.csv')
seven<-read.csv('New Microsoft Excel Worksheet.csv')
str(two)
str(three)
str(six)
two$CRIME.COUNT<-as.factor(two$CRIME.COUNT)
three$Year<-as.numeric(three$Year)

# 1  Plotting Line Graph for Hour wise Crime Count
ggplot(one, aes(x=Hour,y=Crime.Count, label=Crime.Count)) + geom_line(colour = "red", size = 1.5) + scale_x_continuous(breaks = seq(0,23,1)) + theme_gray() + geom_label()


# 2  Plotting Bar Graph for Shift wise Crime Count
ggplot(two, aes(x=SHIFT, y=CRIME.COUNT, label=CRIME.COUNT)) + geom_bar(stat = 'identity', size = 20000) + theme_gray() + geom_label()


# 3  Plotting area Graph for Year wise Crime Count
ggplot(three, aes(x=Year, y=Crime.count, label=Crime.count)) +geom_area() + scale_x_continuous(breaks = seq(2008,2017,1)) + theme_gray() + geom_label()


# 4  Plotting Bar Graph for Shift wise average Crime Count ( PIG OUTPUT USED )
ggplot(six, aes(x=Shift, y=Crime.Count.Average, label=Crime.Count.Average)) + geom_bar(stat = 'identity', size = 2000) + theme_gray() + geom_label()

# 5 Plotting Bar graph for offence wise count
ggplot(seven, aes(x=OFFENSE, y=Count, label=Count)) + geom_bar(stat = 'identity',size = 2000) + theme_gray() + geom_label()
