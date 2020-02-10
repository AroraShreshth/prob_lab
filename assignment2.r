#This code was written on a windows system change the setwd line according to your OS 


#populating DataFrame
setwd("C:/Users/CSED/Desktop")
m1=c(1:750)
m2=c(1:750)
m3=c(1:750)
m4=c(1:750)
m5=c(1:750)
m6=c(1:750)

sum=c(1:750)

m1=runif(750,0,100)
m2=runif(750,0,100)
m3=runif(750,0,100)
m4=runif(750,0,100)
m5=runif(750,0,100)
m6=runif(750,0,100)

for(i in 1:750)
{
 sum[i]=m1[i]+m2[i]+m3[i]+m4[i]+m5[i]+m6[i]
}

#writing data frame
df= data.frame(sub1=m1,sub2=m2,sub3=m3,sub4=m4,sub5=m5,sub6=m6,total=sum)
#writing it to Desktopfolder as CSV
write.csv(df,"abc.csv", row.names=FALSE)
#reading it and storing it in a variable
abc=read.csv("abc.csv",fileEncoding='UTF-8-BOM')

#Mean
print(mean(abc$sub1))
print(mean(abc$sub2))
print(mean(abc$sub3))
print(mean(abc$sub4))
print(mean(abc$sub5))
print(mean(abc$total))

#Median
print(median(abc$sub1))
print(median(abc$sub2))
print(median(abc$sub3))
print(median(abc$sub4))
print(median(abc$sub5))
print(median(abc$total))

#Standard Deviation

print(sd(abc$sub1))
print(sd(abc$sub2))
print(sd(abc$sub3))
print(sd(abc$sub4))
print(sd(abc$sub5))
print(sd(abc$total))

par(mfrow=c(3,3))

#Histograms

hist(abc$sub1)
hist(abc$sub2)
hist(abc$sub3)
hist(abc$sub4)
hist(abc$sub5)
hist(abc$total)

#Boxplots
boxplot(abc$sub1)
boxplot(abc$sub2)
boxplot(abc$sub3)
boxplot(abc$sub4)
boxplot(abc$sub5)
boxplot(abc$sub6)
boxplot(abc$total)
