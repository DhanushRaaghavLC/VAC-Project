dataset = read.csv("movies.csv")
movie<-read.csv("movies.csv")
View(movie)
library(ggplot2)

ggplot(movie,aes(x=title,y=price))+
  geom_point()

ggplot(movie,aes(x=title,y=price,))+
  geom_line()

ggplot(movie,aes(x=title,y=price))+
  geom_boxplot()
