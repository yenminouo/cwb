# 擷取1號雞的成長資料
par(mfrow=c(1,1)) #設定每列1張圖
n=ChickWeight
n1=subset(n,Chick==1)
plot(x=n1$Time,y=n1$weight,type='o',main="Chicken 1",las=1,lwd=2,xlab="Time",ylab="Weight")

# 擷取9,18號雞的成長資料
n9=subset(n,Chick==9)
n18=subset(n,Chick==18)
plot(x=n9$Time,y=n9$weight,type='o',main="Chicken 2",las=1,lwd=2,xlab="Time",ylab="Weight",col=2)
plot(x=n18$Time,y=n18$weight,type='o',main="Chicken 18",las=1,lwd=2,xlab="Time",ylab="Weight",col=3)
#調整一下 x,y 的最大值 xlim,ylim
plot(x=n18$Time,y=n18$weight,type='o',main="Chicken 18", las=1,lwd=2,xlab="Time",ylab="Weight",col=3, xlim=c(0,21),ylim=c(0,250))

# 擷取1-4號食譜的所有資料
d1=subset(ChickWeight, Diet==1)
plot(x=d1$Time,y=d1$weight,type='p',main="Diet 1",las=1,xlab="Time",ylab="Weight")

# 將4張圖畫在一起
par(mfrow = c(2,2)) #設定每列2張圖
plot(x=n1$Time,y=n1$weight,type='o',main="Chicken 1",las=1,lwd=2,xlab="Time",ylab="Weight")
plot(x=n9$Time,y=n9$weight,type='o',main="Chicken 9",las=1,lwd=2,xlab="Time",ylab="Weight",col=2)
plot(x=n18$Time,y=n18$weight,type='o',main="Chicken 18", las=1,lwd=2,xlab="Time",ylab="Weight",col=3, xlim=c(0,21),ylim=c(0,250))
plot(x=d1$Time,y=d1$weight,type='p',main="Diet 1",las=1,xlab="Time",ylab="Weight")

# 擷取1-4號食譜的所有資料
d1=subset(ChickWeight, Diet==1)
d2=subset(ChickWeight, Diet==2)
d3=subset(ChickWeight, Diet==3)
d4=subset(ChickWeight, Diet==4)
par(mfrow = c(2,2)) #設定每列2張圖
plot(x=d1$Time,y=d1$weight,type='p',main="Diet 1",las=1,xlab="Time",ylab="Weight")
plot(x=d2$Time,y=d2$weight,type='p',main="Diet 2",las=1,xlab="Time",ylab="Weight")
plot(x=d3$Time,y=d3$weight,type='p',main="Diet 3",las=1,xlab="Time",ylab="Weight")
plot(x=d4$Time,y=d4$weight,type='p',main="Diet 4",las=1,xlab="Time",ylab="Weight")

#使用boxplot繪製四種食譜的效果
par(mfrow=c(1,1)) #設定每列1張圖
boxplot(ChickWeight$weight ~ ChickWeight$Diet,las=1)

#lines(x=n9$Time,y=n9$weight,col=2,lwd=2)
# plot multiple data series
# 繪製No.1,9,18 成長圖
par(mfrow = c(1,1)) #設定每列1張圖
maxweight=max(n1$weight,n9$weight)
maxtime=max(n1$Time,n9$Time)
plot(x=n1$Time,y=n1$weight,type='o',las=1,lwd=2,
     xlab="Time",ylab="Weight",ylim=c(0,maxweight))
par(new=TRUE)
plot(x=n9$Time,y=n9$weight,type='o',las=1,lwd=2,
     xlab="",ylab="",ylim=c(0,maxweight),col=2,axes=FALSE)
par(new=TRUE)
plot(x=n18$Time,y=n18$weight,type='o',las=1,lwd=2,
     xlab="",ylab="",xlim=c(0,maxtime),ylim=c(0,maxweight),col=3,axes=FALSE)
legend("topleft",legend=c("No.1","No.9","No.18"),col=c(1,2,3),lwd=2,inset=0.02)

# 繪製 Chickens 存活狀態
#p=data.frame(as.numeric(as.character(n$Chick)),n$Time); names(p)=c("Chick","Time")
#直接使用 array 不必在轉換 n$Chick 的factor值
t1=table(n$Chick)
plot(t1,las=1,ylab="Records",xlab="Chicks",col=4)

