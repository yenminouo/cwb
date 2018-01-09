getweather=function(FILE,LABEL) {
  title=c("觀測時間","測站氣壓","海面氣壓",
          "測站最高氣壓","測站最高氣壓時間","測站最低氣壓",
          "測站最低氣壓時間","氣溫","最高氣溫","最高氣溫時間",
          "最低氣溫","最低氣溫時間","露點溫度","相對溼度",
          "最小相對溼度","最小相對溼度時間","風速","風向",
          "最大陣風","最大陣風風向","最大陣風風速時間",
          "降水量","降水時數","觀測10分鐘最大降水量",
          "觀測10分鐘最大降水起始時間","一小時最大降水量",
          "一小時最大降水量起始時間","日照時數","日照率",
          "全天空日射量","能見度","A型蒸發量")
  x=read.csv(FILE,skip=1,header=F)
  names(x) = title; y=x[,c(1,2,8,9,11,14)];
  y['label']=LABEL; return (y) ;}
jul = getweather('201707.csv', '201707')
aug = getweather('201708.csv', '201708')
sep = getweather('201709.csv', '201709')
oct = getweather('201710.csv', '201710')
nov = getweather('201711.csv', '201711')
dec = getweather('201712.csv', '201712')
jan = getweather('201801.csv', '201801')
par(mar=c(5,4,4,2)+1)
boxplot(sep[,c(3,4,5)],ylab="氣溫" ,xlab="201709", las=1)
boxplot(jul[,c(3,4,5)],ylab="氣溫" ,xlab="201707", las=1)
boxplot(aug[,c(3,4,5)],ylab="氣溫" ,xlab="201708", las=1)
boxplot(oct[,c(3,4,5)],ylab="氣溫" ,xlab="201710", las=1)
boxplot(nov[,c(3,4,5)],ylab="氣溫" ,xlab="201711", las=1)
boxplot(dec[,c(3,4,5)],ylab="氣溫" ,xlab="201712", las=1)
plot(jan$相對溼度,type="o", pch=16, col="black",las=1,xlab="日期",ylab="相對溼度",main="2018/01", axes=TRUE)
plot(jul$測站氣壓,type="b", pch=16, col="black",las=1,xlab="日期",ylab="大氣壓",main="2017/07", axes=TRUE)
plot(aug$測站氣壓,type="b", pch=16, col="black",las=1,xlab="日期",ylab="大氣壓",main="2017/08", axes=TRUE)
plot(sep$測站氣壓,type="b", pch=16, col="black",las=1,xlab="日期",ylab="大氣壓",main="2017/09", axes=TRUE)
plot(oct$測站氣壓,type="o", pch=16, col="black",las=1,xlab="日期",ylab="大氣壓",main="2017/10", axes=TRUE)
plot(nov$測站氣壓,type="o", pch=16, col="black",las=1,xlab="日期",ylab="大氣壓",main="2017/11", axes=TRUE)
plot(dec$測站氣壓,type="o", pch=16, col="black",las=1,xlab="日期",ylab="大氣壓",main="2017/12", axes=TRUE)
w2017=rbind(jul,aug,sep,oct,nov,dec)
table(w2017$label)
plot(氣溫~label,w2017,las=1)

