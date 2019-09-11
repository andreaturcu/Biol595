x<-4
5->y
a<-"andrea"
c<-as.integer(6)
class(c)
d<-as.numeric(7)
class(d)
gender<-factor(c("male","female"))
d%%c #Divides the first number by the second then shows you remainder of that as answer
d%/%c #Divides the first number by the second, shows whole answer as answer
c^d #Normal Power function
h<-(1:10)
{x<-1;y<-2;z<-3}
print(x,y,z)
x*y+z
x*(y+z)
#Due to the vlaues I chose both answers are the same but if different values were chosen the answers would be different due to R's abilty to follow the correct order or operations
length(h)<-12
h
#NA appears after I set the length of h to 12 when only 10 characters were present representing 'not available'
3^4567
#The number is too large to calculate so inf is returned
-3^4567
#Same but for negative result
0/0
#NaN stands for 'not a number' and represents solutions that do not exist
NULL
#represents an empty object
'%myop%' <-function(q,p) {6*q*p+(8*p)}
3 %myop% 4
animals<-c("cat","gerbil","lizard","duck")
cat<-100
gerbil<-50
lizard<-1
duck<-25
if (cat>lizard) "cats rule lizards drool" else "Lizards are better than wizards"
