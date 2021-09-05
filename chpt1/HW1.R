
## 1.16 Glow-worms
data = read.csv("C:/Users/adhri/OneDrive/Documents/R/App_Reg_and_Time_Series/chpt1/datasets/GlowWorms.csv")
attach(data)
plot(Eggs~Lantern)

#linear model
model = lm(Eggs~Lantern)
summary(model)

#create line
abline(model, col = 'red')

#predict num of eggs
predict(model, data.frame(Lantern = 14))


## 1.18 Male body Measurements
data1 = read.csv("C:/Users/adhri/OneDrive/Documents/R/App_Reg_and_Time_Series/chpt1/datasets/Faces.csv")
attach(data1)
plot(MaxGripStrength ~ SHR)
model1 = lm(MaxGripStrength ~ SHR)
summary(model1)
abline(model1, col = 'red')
predict(model1, data.frame(SHR = 1.5))


## 1.20 Houses in Grinnell
data2 = read.csv("C:/Users/adhri/OneDrive/Documents/R/App_Reg_and_Time_Series/chpt1/datasets/GrinnellHouses.csv")
attach(data2)
names(data2)  # names of data columns

#a
plot(SalePrice ~ ListPrice)

model2 = lm(SalePrice ~ ListPrice)
summary(model2)

abline(model2, col = 'red')


## 1.21 Breakfast Cereal
data3 = read.csv("C:/Users/adhri/OneDrive/Documents/R/App_Reg_and_Time_Series/chpt1/datasets/Cereal.csv")
attach(data3)
plot(Calories ~ Sugar)
model3 = lm(Calories ~ Sugar)
abline(model3, col = 'red')
predict(model3, data.frame(Sugar = 10))
summary(model3)

#predict calories for just 1 gram of sugar to find residual for Cheerios data point
predict(model3, data.frame(Sugar = 1))


## 1.27 Capacitor voltage
data4 = read.csv("C:/Users/adhri/OneDrive/Documents/R/App_Reg_and_Time_Series/chpt1/datasets/Volts.csv")
attach(data4)

plot(Time ~ Voltage)
model4 = lm(Time ~ Voltage)
abline(model4, col = 'red')

# get list of residuals
res4 = resid(model4)

# create residual vs fitted plot
plot(fitted(model4), res)

# transformed Voltage and plot versus time
plot(Time ~ log(Voltage))
model5 = lm(Time ~ log(Voltage))
abline(model5, col = 'red')
summary(model5)

# create residual plot
res5 = resid(model5)
plot(fitted(model5), res5)


## 1.28 Arctic sea ice
SeaIce = read.csv("C:/Users/adhri/OneDrive/Documents/R/App_Reg_and_Time_Series/chpt1/datasets/SeaIce.csv")
attach(SeaIce)
plot(Extent ~ t)
modelI = lm(Extent ~ t)

# residual plot
resI = resid(modelI)
plot(fitted(modelI), resI)
abline(h = 0, col = 'red')

# transformed plot
plot(Extent^2 ~ t)
modelI2 = lm(Extent^2 ~ t)

# residual plot transformed
resI2 = resid(modelI2)
plot(fitted(modelI2), resI2)
abline(h = 0, col = 'red')
