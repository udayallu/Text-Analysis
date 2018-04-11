library(twitteR)
# TWITTER api token
api_key="9l7l9yCuv7E16f3lMiaSf3mRL"
api_secret="21wyik7tk2HrkS1xkRHXPu6C04E0Pf4jAolUu69c77pWwlxwKm"
token="525327385-OHMmLo5NNykEoUQICNFNDzLlvM2KBgNGp4QZEXmf"
token_secret="mhw3Jf5WemFHeVRmF1mHod6mJP0O5bzxuFskqh3WgvdyA"
# Auth twitter
auth=setup_twitter_oauth(api_key,api_secret,token,token_secret)
# Reading the tweets
tweets=searchTwitter("#uber",n=500,retryOnRateLimit = 120)
# converting to dataframe
tweets[1]
df=twListToDF(tweets)
View(df)
df$
# Getting the user location
uday=getUser('alluuday')
uday$location
uday$url
#
View(uday$toDataFrame())

tweet('tweeting through R.. !!!')
#
modi= userTimeline('narendramodi',n=50)
modi[[1]]