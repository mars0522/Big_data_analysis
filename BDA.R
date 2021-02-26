# reading the data
tweet<-read.csv("/home/varuna/Downloads/tweet.csv")
# viewing the data
View(tweet)

# Here in this data set we are classifying the bins based  on  the followers of the users 

# now creating the bin of users having followers less than equal to 500
tweet %>% filter (tweet$user_no_of_followers <= 500) -> bin1
View(bin1)

# now creating  the  bin of users having followers more than  500 and less than equal to 1000
tweet %>% filter (tweet$user_no_of_followers > 500  & tweet$user_no_of_followers <=1000) ->bin2 
View(bin2)

# now creating the bin of users  having followers more than 1000 and less than equal to 2000 
tweet %>% filter (tweet$user_no_of_followers > 1000  & tweet$user_no_of_followers <= 2000) -> bin3
View(bin3)

# now creating the bin of users having followers more than 2000 
tweet %>% filter (tweet$user_no_of_followers > 2000 ) -> bin4
View(bin4)

