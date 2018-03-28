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





#10

breaks <- str_locate(email, "\n\n")
header <- sapply(email, str_sub, end = breaks[,1] )
#header <- str_sub(emails, end = breaks[,1])
body <- sapply(email, str_sub, start =breaks[,2])
#body <- str_sub(emails, start = breaks[,2])



cat(body[1])
