x <- heart[1:20,"chol"]
View(x)
#now i am going to plot line graph
plot(x,type = "o",xlab = "Gender", ylab = "Cholostrol Level", main = "This Line Graph of Cholostrol Vs Gender", col="red")

#now pie chart for old peak
a = heart[1:13,"oldpeak"]
labels = heart[1:13,"oldpeak"]
pie(a,labels,main = "Its the piechart with old peak", col=rainbow(length(x)))

#bar plot
b= heart[1:10,"age"]
n = heart[1:10,"cp"]

barplot(b,names.arg = n, xlab ="cp", ylab ="age", col = "blue", main = "Age Vs CP")
bp = heart[c("age","cp")]
print(bp)
boxplot(bp$age~bp$cp, xlab = "Age", ylab = "CP", col = c("green","blue"))

#scatter plot
ss = heart[1:303, c("trtbps","thalachh")]
print(ss)
plot(x = heart$trtbps, y = heart$thalachh, xlab = "Trtbps", ylab = "Thalachh", col="red")


heart$Gender = as.factor(ifelse(heart$sex == 1,"male","female"))
men <-subset(heart, sex == 1)
women <- subset(heart, sex == 0)
mean(men$age)
mean(women$age)
t.test(men$age, women$age, alternative = "two.sided", conf.level = 0.99)
#i need to check whether is it women or men who gets heart attack at old age
#p value is less than 0.5 so it is accepting null value