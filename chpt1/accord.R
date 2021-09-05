data = read.csv("C:/Users/adhri/OneDrive/Documents/R/App_Reg_and_Time_Series/chpt1/datasets/AccordPrice.csv")
attach(data)
names(data)
plot(Price~Mileage)
model = lm(Price~Mileage)
summary(model)
anova(model)
abline(model)
new = data.frame(Mileage=5)

#Confidence Interval for a Prediction
predict(model, new, se.fit=T, interval='confidence')

#Prediction Interval
predict(model, new, se.fit=T, interval='prediction')
