#Paperclip Challenge 
#Written by Matthew Thompson
#V 0.1.2

#Input data
data = read.csv(file.choose(), header = TRUE);

#Allocate data
dataTime = data[,1];
dataForce = data[,2];
plot(dataTime,dataForce,ylim=c(-500,0),main="Tension over time",xlab="Time (mS)",ylab="Tension (mN)")

#Fit polynomial to data
model <- lm(dataForce~poly(dataTime,3));
summary(model)


