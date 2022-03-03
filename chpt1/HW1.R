
## 1.16 Glow-worms
data = read.csv("C:/Users/adhri/OneDrive/Documents/R/App_Reg_and_Time_Series/chpt1/datasets/GlowWorms.csv")
attach(data)
plot(Eggs~Lantern)

#linear model
model = lm(Eggs~Lantern)
summary(model)

#create line
abline(model)

#predict num of eggs
predict(model, data.frame(Lantern = 14))

