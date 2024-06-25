#Code for question 1
ans <- pbinom(9, size=12, prob=1/6) - pbinom(6, size=12, prob=1/6)
print(ans)

#Code for Question-2
ans = 1 - pnorm(84, mean=72, sd=15.2) #Solution One
ans = pnorm(84, mean=72, sd=15.2, lower.tail = F)
print(ans)

#Code for question-3
print(dpois(0, 5))
print(ppois(0, 5)) #Difference between ppois and dpois?

print(ppois(q = 50, lambda = 50) - ppois(q = 47,lambda=50))

#Code for question-4
print(dhyper(3,m=17,n=233,k=5))

#Code for question-5

#plotting pmf
xx<-seq(0,31,1)
n<-31
p<-0.447
pmf_value<-numeric()
for(i in 1 : length(xx)){
  pmf_value[i] = dbinom(xx[i],n,p)
}
plot(xx,pmf_value)

#plotting cdf
xx<-seq(0,31,1)
n<-31
p<-0.447

cdf_value<-numeric()
for(i in 1 : length(xx)){
  cdf_value[i] = pbinom(xx[i],n,p)
}
plot(xx,cdf_value)

#mean,variance,sd
#q<-1-p
mn<-n*p
vr<-n*p*(1-p)
std<-sqrt(vr)