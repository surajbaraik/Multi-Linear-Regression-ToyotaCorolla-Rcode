

Tcorolla <-read.csv(file.choose())
Corolla_Pred1 <- Tcorolla[,-1]
class(Corolla_Pred1)

View(Corolla_Pred1)
attach(Corolla_Pred1)

summary(Corolla_Pred1)
plot(Age_08_04, Price)
plot(KM, Price)
plot(HP, Price)
plot(cc, Price)
plot(Doors, Price)
plot(Gears, Price)
plot(Weight, Price)

windows()
pairs(Corolla_Pred1)


cor(Corolla_Pred1)
corolla.price <- lm(Price~Age_08_04+KM+HP+cc+Doors+Gears+Quarterly_Tax+Weight)
summary(corolla.price)

corolla.price2 <-lm(Price~Age_08_04+KM+HP+Gears+Quarterly_Tax+Weight)
summary(corolla.price2)

