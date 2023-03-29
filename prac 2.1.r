#print(getwd())
data<-read.csv("CarPrice.csv")
print(data)
print(ncol(data))
print(nrow(data))
print(is.data.frame(data))

car<-max(data$symboling)
print(car)

retval<-subset(data,carbody=="hatchback" & doornumber=="two")
print(retval)

car<-str(data)
print(car)

print(summary(data))

data<-read.csv("Iris.csv")
print(data)

retval<-subset(data,Species=="Iris-virginica")
print(retval)

agg_min=aggregate(iris[,1:4], by=list(iris$Species), FUN=max, na.rm=TRUE)
print(agg_min)
