## sentiment analysis
library(RSentiment)
# know whether positive or not 
calculate_sentiment('I love India')
# Polarity increses by the likely ness 
calculate_score('I love India  MUCH')
calculate_score('I love India Very very  MUCH')

a=calculate_sentiment(post_details$comments)
View(a)

post_details$comments$sentiment <- calculate_sentiment(post_details$comments$message)

View(post_details$comments$sentiment)
