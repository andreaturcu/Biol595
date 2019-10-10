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
#######NOTES 9-30-19#######
load("fish_data.Rdata")
f<-fish
#Subsetting
fd<-f[f$depth_fac == "Deep",]
fd2 <- subset(x = f, depth_fac == "Deep")
fd3 <- f[f$depth_fac == "shallow",]
#The above kind of subsetting is called indexing by condition, to only have the number of columns that we want we can add select=c("transect, "area_fac") to the subset one!
fd
fd2
fd3
fd4 <- f[f$area_fac == "East",]
fd4
fd5 <- f[f$type_fac == "Patch",]
fd5
#Another way to subset (by filter):
library(dplyr)
fd6 <- filter(.data = f, depth_fac == "Deep")
#######################Need to add dplyr library!!!
fd7 <-f[which(f$depth_fac == 'Deep' & f$area_fac == "East" & f$yr_fac == "2014""),]
#Need dplyr to do above, try again later!
#subset &then combine using rowbind (rbind function)
#when doing rbind you need to make sure that the number of variables is the same and they're in the same order
#if you want to combine d1 and d2 back into a single data frame:
d3 <- rbind(d1,d2)
d1 <- f[wich(f$depth_fac == 'Deep' & f$area_fac == "East"),]
d2<- f[which(f$depth_fac == 'Shallow' & f$area_fac == "West"),]
#Combine data frames with separate columns into a single data frame:
c1 <- subset(x=f, depth_fac == "Deep", select = c("transect.id","area_fac"))
c2 <- subset(x=f, depth_fac == "Deep",
             select = c("depth_fac", "parcel.length.m", "group")) 
c3<- cbind(c1,c2)
c3
head(c3)
#can also use merge and join to get things lined up properly(ensuring that observations from one data frame are connected with observations from the second correctly):
m1 <- subset(x=f, depth_fac == "Deep",select = c("transect.id","area_fac"))
m2 <- subset(x=f, depth_fac == "Deep",select = c("depth_fac","parcel.length.m","group"))
##Merge (allows you to merge data that may have headers that have different names in the two data sets e.g. altitude and elevation (this is the by.x, by.y))
#The all part of the following tells you how things in each adata set are rfoing to be lined up
mt <- merge(x = m1, y = m2, by =c("transect.id","seq"),all.x = T, no.dups = T)

#join
mj <- dplyr::right_join(x=m1, y=m2, by =c('transect.id'))
head(m2) 
#below I'm trying to add numbers to the rows so they can find it...smth, I'm not sure...
m2$seq <- seq(1,nrow(m2), by = 1)
m1$seq <- seq(1,nrow(m1), by =1)
nrow(m1)+nrow(m2)


#creat a sequence of data
m2$seq <- seq(from =1, to =nrow(m2), by=1)
v<-seq(5, 20, 0.5)
vc <- cut(x=v, breaks =seq(5,20,0.5), include.lowest = T)
 #####Today we've gone over subsetting, used merge and join, we talked about a cut function to bin your data
 #####################Notes 10-2
 install.packages("nutshell")
library(nutshell)
data("batting.2008")
d<- batting.2008
#tapply --- (tidyverse function)        
#find quantile vales for home runs by team
hr <- tapply(X = d$HR, INDEX = list(d$teamID), FUN = sum)
hr 
#fivenum (see below) gives you: min, lower-hinge, median, upper-hinge, and max value
hr.q <- tapply(X = d$HR, INDEX = list(d$teamID), FUN = fivenum)
hr.q  
#In the one below we're looking for the hits compared to the at bats for the league ID (Kelly wrote: one category summarize)
lg.q <- tapply(X = (d$H/d$AB), INDEX = list(d$lgID), FUN = fivenum)        
lg.q    
#We could do the same thing using summary and subsetting- subsetting within subsetting within subsetting
summary(d[d$lgID== "AL",]$H/d[d$lgID== "AL",]$AB)
#(Kelly wrote: two category summaries)
bats <- tapply(X =d$HR, INDEX= list(d$lgID, d$bats), FUN= mean)
bats        
#ABOVE: THE POINT IS THAT WE WERE ABLE TO SUMMARIZE OVER TWO CATEGORIES (you could do this with two categories!)
#(Kelly wrote: three category summaries)
bats.team <- tapply(X =d$HR, INDEX= list(d$lgID, d$bats, d$team), FUN= mean)
bats.team        
#ABOVE: Added a third category in there  
#Only use tapply if you're trying to use one category over a set of vecors
#aggregate ----        

team.stats <- aggregate(x = d[c("AB","H","BB","2B","HR")],by=list(d$teamID), FUN=sum)
team.stats
#aggregate and summarise are similar; see below for example

#summarise is a tidyverse function
# tidyverse summarise() ----
team.sum = d %>% group_by(teamID) %>% summarise(ABsum =sum(AB), ABmean= mean(AB),ABsd = sd(AB),ABcount =n())
#ABOVE:  %>% allows you to take a dataframe and send it down the pipeline (pass the information from the dataframe d to group_by)

#rowsum ----
#when you just want to add up the values in each row
rs = rowsum(d[,c("AB","H","HR","2B","3B")], group =d$teamID)
rs

#counting variables ----
#use the function "tabluate"
 HR.cnts <- tabulate(d$HR)
 names(HR.cnts) <-0:(length(HR.cnts)-1)

#table ----
table(d$bats)
table(d[,c("bats","throws")])

#aside about the names function ----
m <- matrix(nrow = 4, ncol = 3)
colnames(m) <- c("one","two","three")
rownames(m) <- c("apple","pear","orange","berry")
m

#reshaping your data ----
n <- matrix(1:10, nrow = 5)
n
#you can transpose your data just like in excel where your columns become your rows:
t(n)
#if you do the above with a vector then you'll turn it into a list with one row and a string of values going down

#Another way to reshape your data is by stacking:
s <- d[,c("lgID","teamID","AB","HR","throws")]
s.un <- unstack(x =s, form = HR ~ AB)
###NOT SURE WHAT WE WERE TRYING TO DO ABOVE, IT WENT WRONG IN CLASS

library(reshape2)

#use the "dcast" function to change data frame from the long to wide format
s.wide <- dcast(data =s, value.var = "HR" formula = "lgID" ~ "teamID", fun.aggregate = mean)
####ABOVE DID NOT WORK IN CLASS BUT WE RAN OUT OF TIME TO TROUBLESHOOT
####OVERALL: TODAY WE WENT OVER SUMMARISE AND DID A LITTLE RESHAPING WITH THE TRANSPOSING
####HOMEWORK: WILL BE DUE ON MONDAY!

              
##Notes 10-7-19
f <- fish; rm(fish)
fs <- f[,c("transect.id","area_fac","depth_fac","parcel.id","parcel.density.m3","parcel.length.m")]
fs
#How to rename a field:
library(tidyverse)
fs<-rename(.data=fs,tid=transect.id)
names(fs)
fs<-rename(.data=fs, area = area_fac)
fs<-rename(.data=fs, depth=depth_fac)
fs<-rename(.data=fs, pid=parcel.id)
fs<-rename(.data=fs, pl=parcel.length.m)
fs<-rename(.data=fs, pd =parcel.density.m3)


###Reshaping your data ----
library(reshape2)
#using the function 'melt' (reshape2) to change 
#used for heading that are categorical and then contain numbers, Kelly wrote: data frame from wide to long format

fs.melt <- melt(data=fs,id.vars =c("tid","pid","area","depth"), measure.vars=c("pl","pd"),value.name=c("numbers"))
fs.melt

#if you want to go the other direction, your data is in the long format and you want to turn it into the wide
#use dcast function
fs.cast <- dcast(data=fs.melt,formula=tid~variable,value.var =c("numbers"), fun.aggregate=mean)
fs.cast
head(fs.cast)
names(fs.melt)

#spread and gather using tidyverse:
fs.gather=fs %>% group_by(tid,area,depth,pid)%>% gather(key = 'varaible',value = 'value',pd,pl)
head(fs.gather)

#removing duplicates ----
head(fs)
o1<-fs[1,]
o2<-fs[1,]
o3<-fs[1,]
o4<-fs[2:10,]

#bind these individual objects back together using function "rbind"
o<-rbind(o1,o2,o3,o4)
#now the first three rows are duplicate observations
no.dups<- o[!duplicated(o),]
dups <- o[duplicated(o),]              


#complete cases
#this is used to look for lines where there is no missing data, no NA's allowed
#Below: making some na data
fs[2,]$pd <-NA
fs[4,]$pl <-NA
fs.complete <- fs[complete.cases(fs),]              
head(fs.complete)              
#note that in the output in the pid column, number 2 and 4 are gone because it got rid of the na's

#sorting data ----
attach(mtcars)
mtcars              

#sort by mpg
nd<-mtcars[order(mpg),]
nd              

#using the arrange funtion
nd.arrange <- arrange(.data=mtcars,mpg) #ascending
nd.arrange 
nd.arrange.desc <-arrange(.data=mtcars, desc(mpg)) #descending
nd.arrange.desc              

#sorting by two things:
nd.m.c <- arrange(.data=mtcars, mpg, cyl)
nd.m.c              
#today we went over shaping, melt and dcast, we renamed column, removed duplicates, complete cases (throwing out observations with missing data), and sorted using order and arrange              
  
  
########Notes 10-9-19#######
#Exam Review

#The dates and times we went over before exam 1:
d= read.table(ect, ect, ect)(see original notes for whole thing)
#sep=\t means tab delimited, and if you left a blank space there then you'd have a space delimited file.
#header=TRUE you put when you have column headers
#strings as factors=FALSE means: a factor is a variable with different levels, so LOOK UP! NEEDS MORE INFO
#na.strings=9999.99 means that any cell that has this value will be counted as an NA

#How to creat a proper date and time function:
#date = scan(isis314325134.txt, what = 'chatacter', skip =1, nlines = 1, quiet =TRUE)
#mm =str_sub(string = date, start =1, end = 2)
#with a string and you're telling it that you want to start at 1 and end at 5 then all positions count, even spaces!
#You can switch to a character instead of numeric (see dateNextday from original notes)

#if you want to pull the last two characters of a string you can put -1 and -2 instead of counting them from the front
#above: make sure you have start = -2 and end = -1 so they're in the correct orrder (last # is -1, 5th to last if -5, ect)

#d$Time is set as a string of numbers with hour, min, sec format
#so if you want to pull out the hour information you'd put: d$hour = as.numeric(str_sub(d$Time,1,2))

#combining two strings, the date from one column, and the time from another column:
#do that using the: as.POSIxct(strptime(d$dateTime, format= "%m/%d/%y %H:%M:%OS, tz="America/New_York"))

#to change the time zone: d$changetime= format(d$dateTime, tz = "America/Los_Angeles

##Aggregate:
#c = aggregate(x= df$H, by = list(df$teamID), FUN = sum)
#The output of aggregate is a dataframe

a2.df = data.frame(tid = row.names(a), mean = as.numeric(a))
#above creates a new data frame

#####to look something up in R studio you can type: ?summarise or whatever you're looking for


#merging data frames
q=data.frame(id=c('a','b','c','d'), num=c(1,2,3,4))
v=data.frame(id=c('a','b','e'), car =c(6,7,8))
qv= merge(x=q, y= v, by = 'id')
qv
#it only combined a and b because those were the only ones that were in common
#you could include all = T into the above qv= equation to get all of the data whether it has a match or not, if it doesn't have a match then it's an NA
# or you could include all.x=T and it'll put everything from the 'left' side and tries to match it to y's or will put NA

#melt and cast ----
library(reshape2)
m= melt(data =df, idvars=c('teamID'), measure.vars =c('H', 'AB'))