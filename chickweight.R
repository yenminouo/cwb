c=ChickWeight
c[,2]
x=c[,c("weight")]
y=ChickWeight$weight
identical(x,y)
z=ChickWeight[,c(1,4)]
ChickWeight[,c("weight","Diet")]
m=ChickWeight[c(1,3,5,7,9),]
nrow(c)
n=c[c$weight==48,]
plot(n$weight)
o=subset(ChickWeight,Chick==48,select=c(Time,weight))
identical(n,o)
plot(o$weight)
boxplot(ChickWeight$weight ~ ChickWeight$Diet, las=1)

