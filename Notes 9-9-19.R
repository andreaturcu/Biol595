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
