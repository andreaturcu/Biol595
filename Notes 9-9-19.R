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

