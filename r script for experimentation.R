#6. How many people enrolled in HarvardX/CS50x recieved certification in 2012? (Please inlcude your code in your markdown document)

#filter data set to only view those who recieved certification in 2012
D2 <- filter(D1, certified == 1, str_detect(last_event_DI, "2012"))
head(D2[,c(6,13)])
dim(D2) #347 people recieved certification in 2012

7. How many people registered for HarvardX/CS50x from Columbia on October 15, 2012? (Please inlcude your code in your markdown document)
D3 <- filter(D1, str_detect(start_time_DI, "2012-10-15"), str_detect(course_id, "HarvardX/CS50x"), str_detect(final_cc_cname_DI, "Colombia"))
D3[,c(1, 7, 12 )] #10 students regiserted from Colombia for Harvardx/CS50x on October 15, 2012

8. Create a new data frame (`D2`) that includes student ID and registration date for all students from a country of your choice (Please inlcude your code in your markdown document)
names(D1)
D2 <- D1 %>% filter(final_cc_cname_DI == "Portugal") %>%
  select(userid_DI, start_time_DI, final_cc_cname_DI)
head(D2)


9. Create a new data frame (`D3`) in which the column names are the registration dates, with one column containing the student ids and all other cells indicating a `1` if the student registered on that date or an `NA` if they did not (hint: you will need to create a new variable before you change the structure of your data frame)

#create empty data frame
mat <- matrix(data = NA, nrow = 476532, ncol = 413)
colnames(mat) <- unique(D1$start_time_DI)
users <- unique(D1$userid_DI)
DF3 <- cbind(users, mat)
DF3 <- as.data.frame(DF3)
dim(DF3)
x <- as.data.frame(DF3[,1:2])
head(x)
dim(x)[[1]]

for(i in 1:dim(x)[[1]]){
  date <- colnames(x)[2]
  if(date == as.character(D1$start_time_DI) && x[i,1] == as.character(D1$userid_DI)) {
    x[i,2] == 1}  
}
sum(x[,2])

if(date != as.character(D1$start_time_DI) && x[1,1] != as.character(D1$userid_DI)) {x[1] == 1}
  head(D1)

length(date == as.character(D1$start_time_DI))
length(x[1,1] == as.character(D1$userid_DI))

y<- filter(D1, start_time_DI == "2012-12-19")

       #take date and compare it to the column with registration dates in original data frame,
#if there is a match return 1

#with one column containing the student ids and all other cells indicating a
#`1` if the student registered on that date or an `NA` if they did not  


names(D1)
spread(D1.1, key = userid_DI, value = start_time_DI)

D1.1 <- D1[1:10, ]
D1.1 <- select(D1.1, userid_DI, start_time_DI)
D1.1
D1.1 <- D1.1[-c(9,10, 3:7, 1, 2),]
filter(D1.1, unique(userid_DI))
spread(D1.1, key = userid_DI, start_time_DI)
10. Now make the row names of `D3` the student ids on your new data frame and remove the user id column from your data frame

11. Convert your data frame to a matrix (`M1`)

12. Create a new matrix which is the transposed version of your matrix (`M2`)

13. Create a third matrix (`M3`) that is a student by student matrix where the cells in the matrix represent if two studentes registered on the same day (This will take a lot of processing power, you may not be able to complete it if you have a large number of students)

14. Convert the diagonal of your matrix into `NA`s














#xploratory
dates <- D2$last_event_DI
dates


dates <- dates[1:10]
dates
dates <- as.character(dates)
dates
str_detect(dates, "2012")
str_detect(D2$last_event_DI, "2012")
