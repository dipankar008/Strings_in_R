## Manupulation and Visualization of text data using stringr package

library(stringr)

print("\"")
cat("\"")

#2

cat(":-\\")

cat("(^_^\")")

cat("@_'-'")

cat("\\m/")

#3

?str_locate
?str_sub


#4 

str_locate(string = c("great","fantastic","super"), pattern = "a")
str_locate_all(string = c("great","fantastic","super"), pattern = "a")

#5

#str_sub("testing", start = C(1,4,1), end=c(3,8,4)) does not work this way
str_sub("testing", start = 1, end=3)
str_sub("testing", start = 4, end=7)
str_sub("testing", start = 1, end=4)
str_sub("testing", end=4)
str_sub("testing", start = 4)


#6

input <- c("abc", "defg")
str_sub(input, c(2,3))


#7

email <- readRDS("email.rds")

cat(email[1])

str_locate(email[1], pattern = "\n\n")


#8
header <- str_sub(email[1], end = 842)
cat(header)
cat(str_sub(email[1], start = 843))

#9

str_split(header, pattern = "\n")



#10

breaks <- str_locate(email, "\n\n")
header1 <- sapply(email, str_sub, end = breaks[,1] )
header <- str_sub(email, end = breaks[,1])
body1 <- sapply(email, str_sub, start =breaks[,2])
body <- str_sub(email, start = breaks[,2])

cat(body[1])

#Regular Expressions in R and Messy Data-Lab

#1
fruit <- c("apple", "banana", "pear", "pinapple", "axe")

#2
str_detect(fruit, "a")

str_detect(fruit, "^a")

str_detect(fruit, "a$")

str_detect(fruit, "[aeiou]")

str_detect(fruit, "[a-d]")

str_detect(fruit,"[0-9]")

pass_name <- as.character("Braund, Mr. Owen Harris")
gsub(pattern ="^.*, (.*?)\\..*$",
     replacement = "\\1", 
     pass_name)

#3
#### . could be any character or number 
str_detect(fruit, pattern = "^a[a-z]*e$")

#4

phone <- c("213 740 4826", "213-740-4826", "2137404826", "213 7404826", "213 740-4826", "(213) 7404826")

str_detect(phone, "[(]?[0-9]{3}[)]?[- ]?[0-9]{3}[- ]?[0-9]{4}")

#5 

phone_nos <- str_extract_all(body1,"[(]?[0-9]{3}[)]?[- ][0-9]{3}[- ][0-9]{4}")

phone_nos[[84]][1]



