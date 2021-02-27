tweet<-read.csv("/home/varuna/Downloads/tweet.csv")
View(tweet)

# As it can be seen in the picture attached of the output of the below  code that most of the data
# lies in the retweet section of 0,1,2,3,4
# Here i'm first analysing the data that where the most of the data lies based on the column retweets
# by running below  line
table(tweet$retweets)
# after analysing the distribution of the data i tried to bin them  according to their distribution


# Now here we are finding the mean and storing  it in the variable m
m<-mean(tweet$retweets)
# Here we are finding the standard deviation and storing it variable s
s<-sd(tweet$retweets)

# loading dplyr library for the data manipulation
library(dplyr)

# more than half of the data lies in bin 1 ie  61.598 %
# It's a bin having zero retweets
tweet %>% filter( tweet$retweets == m-m)->bin1
View(bin1)
nrow(bin1)

# 33.14 % of the data lies in bin 2
# It's bin having retweet range [1,9]
tweet %>% filter(tweet$retweets > (m-m) & tweet$retweets <=m)->bin2
View(bin2)
nrow(bin2)
range(bin2$retweets)

# 0.28 % of the data lies in bin 3
# It's bin having retweet range [10,414]
tweet %>% filter(tweet$retweets > m & tweet$retweets <=s )->bin3
View(bin3)
nrow(bin3)
range(bin3$retweets)
#  5.1957 % of the data lies in bin 4
# It's bin having retweet range [418,62666]
tweet %>% filter(tweet$retweets > s )-> bin4
View(bin4)
nrow(bin4)
range(bin4$retweets)
