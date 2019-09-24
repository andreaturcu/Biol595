a<-c(2:14)
a
b<-list(b)
b
b<-c("hello","cat","dog","pig")
str(b)
class(b)
typeof(b)
b<-list(b)
class(b)
m<-matrix(data=1:12, nrow=4, ncol=3,dimnames=list(c("r1","r2","r3","r4"),c("c1","c2","c3")))
m
a.ray<- array(data = 1:24, dim=c(3,4,2))
a.ray[3,4,1]#To find a number in your matrix: First the row, then the column, then the block 
#Data Frames
df<- data.frame(a=c(1,2,3,4), b=c(1,2,3,4))
df
df.matrix<-as.matrix(df)
df
df[3,2]
df[3,c("b")]
#dollar sign pulls out values from lists
df$b
#unique will return the unique values within any sort of data storage object
unique(parcel.l$group)#I don't have the data set named parcel.l on here so I won't return any results
#need to know how to subset your data! 
#Kelly put: f<- parcel.l [parcel.l$group == "fish"]So: F<- dataname[datanamedollarsigncolumnname == "what youre looking for"]
#how to index things? I don't know
####CLASS 9/11/19
load("fish_data.Rdata")
str(fish) #to get fish data down below
fish.e<-fish[fish$area_fac == "East",]
east
East
e.lat <- fish[fish$area_fac == "East",]$parcel.start.lat #I have no idea what we're doing here #goes from data frome, to column, to more specific (?)
head(e.lat)
str(e.lat[6])
fish_east <- fish[fish$area_fac != "East" & fish$depth_fac == "shallow"] #!= means not equal to
unique(fish.e$depth_fac)
unique(fish_not_east$depth_fac)
str(fish)
fish_lg_patch <- fish[fish$parcel.length.m >= 20,]
summary(fish$parcel.lenght.m)
v<- c(1,1,2,0,3,2,0,1)
v
2%in% v
2 > 5
1> c(0,1,2)
c(1,2,3) == c(0,1,2)
#used the equal sign to compare two different vectors
c(1,2,3) %in% c(3,2,1)
# are vector 1 components in vector 2?
v
#Replace zero, which is in the 4th position
v[4] <- 5
v
v[c(1,3,5)]<- c(1,1,1)
v
#above changes the 1st 3rd and 5th numbers in line to the ones listed after
#if you want to remove everything from your ram you can use gc which stands for garbage collection
n<-(c(NA,1:50))
n
mean(n)
mean(n,na.rm =T)
######To remove NA's from your data set!!!!!!!!!!!!!!!!!!!!!
n.a<- n[which(is.na(n)),]
n.a<- is
names(fish)
unique(fish$year)
fish.na<-fish[fish$year[6],]<- NA
fish.na

fish$year[6] <- NA
head (fish$year)
fish.no.na <- fish[!is.na(fish$year),]
unique(fish.no.na$year)
unique(fish$year)
install.packages("data.table")
?mean
getwd()
#######NOTES 9-16-19
d<-read.table(file= 'ISIIS201405291242.txt', sep="\t", skip=10, header=TRUE, fileEncoding="ISO-8859-1", stringsAsFactors = FALSE, quote = "\"", check.names = FALSE, encoding = "UTF-8",na.strings = "9999.99")
#\t means that our file is tab delimited, which means our columns in the file are spaced out by tabs
#na.strings tell R that if it sees this value then it'll turn it into NA
head(d)
#Make sure to write true and false in capital letters
date<- scan(file='ISIIS201405291242.txt', what="character", skip = 1, nlines=1, quiet=TRUE)
date
#The goal of the above was to pull out the date from line 2 in our file
date<-date[2]
date
#next, we need to put the date into a format that R recognizes as a date, so we need to break it apart and put it back together in a way that R recognizes
library("stringr")
#above allows you to walk along a string and pull out different parts
mm<- str_sub(string= date, start =1, end=2)
d$constant=NULL
mm
dd<- str_sub(date, 4,5)
dd
yy<-str_sub(date, 7, 8)
yy
dateNextDay <-str_c(mm,as.character(dd+1),yy,sep="/")
dd<-as.numeric(dd)
dateNextDay
#as.numeric changes the dd to a number, MUST do this first
head(d)
str(d)
d$hour<- as.numeric(str_sub(d$Time,1,2))
str(d$Time)
names(d)
head(d$hour)
head(d$Time)
d$min<-as.numeric(str_sub(d$Time,4,5))
d$sec<-as.numeric(str_sub(d$Time,7,11))
##Exam Review:
#> r.array<-array(data=1:24,dim=c(3,4,2))
> 
  > r.array
, , 1

[,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12

, , 2

[,1] [,2] [,3] [,4]
[1,]   13   16   19   22
[2,]   14   17   20   23
[3,]   15   18   21   24

> d.array[2,2,1]
Error: object 'd.array' not found
> r.array[2,2,1]

n.rows(r.array)
##############################
#Notes 9-23-19
date<-date[2]
library(stringr)
mm<- str_sub(string = date, start =1, end=2)
dd <- str_sub(string = date, start =4, end =5)
dd<- as.numeric(dd)
yy<- str_sub(string = date, start =7, end =8)
dateNextDay <- str_c(mm,as.character(dd+1),yy, sep="/")
dateNextDay
d$hour <- as.numeric(str_sub(string = d$Time, start=1, end=2))
d$minute<- as.numeric(str_sub(string= d$Time, start =4, end = 5))
d$sec<- as.numeric(str_sub(string= d$Time, start= -5, end = -1))
##Didn't follow what happened above, couldn't load data! (TRY TO REDO LATER)
date<-str_c(mm,dd,yy, sep = "/")
date
#Above we remade our date that we took apart earlier
#To edit? dates and times in R google the dates and times in R to get a chart of decimal seconds (%s), 4 digit year(%Y), ect
d$dateTime<- as.POSIXct(strptime(x=d$dateTime, format="%m/%d/%y %H:%M:%S", tz="America/New_York"))
d$dateTime<-d$dateTime - time.zone.change * 3600
#Not sure what we're trying to do in the above
#If you're missing your seconds, you can add in :
options("digits.secs"=3)
#this turns on the seconds 
#you will need to run this line before running lines 152, 156 and 157

###Loading in different file types:
install.packages("xlsx")
library("xlsx")
read.csv(file="Aurelia_SEAMAP_2012-2018_30minCell.csv")
getwd
getwd()
setwd("C:/Users/George/Desktop/Intro to R/Biol595")
###Cant load this data set in, may need to change working directory