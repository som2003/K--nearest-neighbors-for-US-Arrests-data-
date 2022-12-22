us=read.csv("D:/Downloads/USArrests.csv",row.names=1)
View(us)
str(us)
summary(us)
normus=scale(us)
uscluster=kmeans(normus,4,nstart=20)
uscluster
k.max<-10
wss<-rep(NA,k.max)
nclust<- list()
for (i in 1:k.max){
  driveclasses<-kmeans(normus,i)
  wss[i]<-driveclasses$tot.withinss
  nclust[[i]]<-driveclasses$size
}
plot(1:k.max,wss,type="b",pch=19,xlab="No.of clusters k",
     ylab="Total within-cluster sum of squares")
uscluster[["betweenss"]]
uscluster[["totss"]]

