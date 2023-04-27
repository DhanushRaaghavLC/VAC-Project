dataset = read.csv("C:/Users/DHANUSH/Downloads/Pokemon.csv")

Attack = dataset [,7]
Defense = dataset [,8]

data = data.frame(Attack, Defense)

library(caTools)

set.seed(42)

split = sample.split(data$Defense, SplitRatio = 0.8)

training_set = subset(data, split==TRUE)
View(training_set)

testing_set = subset(data, split==FALSE)
View(testing_set)

regressor = lm(formula = Defense~Attack, data = training_set)

y_pred = predict(regressor, newdata = testing_set)
View(y_pred)

library(ggplot2)

plot(testing_set$Attack, testing_set$age, type = 'p', 
     col = 'blue', xlab = 'Attack', ylab = 'Defense')

lines(testing_set$Attack, y_pred, type = 'o', col = 'red')