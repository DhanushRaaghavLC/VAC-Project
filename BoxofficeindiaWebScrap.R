library(rvest)
library(dplyr)

link = "https://boxofficeindia.com/hit-down.php"
page = read_html(link)

title = page %>% html_nodes(".boi-listing-rows tr td+ td") %>% html_text()
price = page %>% html_nodes(".boi-listing-rows td:nth-child(5)") %>% html_text()
date = page %>% html_nodes(".boi-listing-rows td:nth-child(3)") %>% html_text()

movies = data.frame(title,price,date, stringsAsFactors = FALSE)
write.csv(movies, "movies.csv")