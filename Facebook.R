#Facebook
library(Rfacebook)
#
app_id = "157032044999109"
app_secret = "dba2c7e49122d532b8b473c2e2eff230"
# Generating a token 
# go to this link https://developers.facebook.com/tools/explorer
token="EAACEdEose0cBAIcLBhxTPno74SgKq4ImZAQBrkC2E0t03vZB1NSh4ZBqpIAvfVNnNEodbecEz1BKJIDmhUIhZB7H9cRzenKRQ9ORhV4KOdr1TdxqAQLANgYfvjUuWtajUwL2RXhQwaErFu0DDk6Yn9SNe45aXDOpJrOEDqNQ9ileoNyDkDhRZA7zZC2dYcDOJc2mmZBjmdEBQZDZD"
fb_oauth=fbOAuth(app_id,app_secret,extended_permissions = TRUE)
## get your FB data
getUsers("me",token=fb_oauth)
getUsers("me",token,private_info = TRUE)
updateStatus(" Updating Status using Facebook APi and R !:)",token = fb_oauth)

#get likes of me
likes <- getLikes(user = "me",token = fb_oauth)
View(likes)

#Get the details about a specifi page

getpagedata <- getPage("7746841478",token = fb_oauth,n=50)
View(getpagedata)
   
#Get details about a specific post
post_details <- getPost("7746841478_10155171865546479",token = fb_oauth,comments = TRUE,likes = FALSE)
class(post_details)
View(post_details$post)
View(post_details$comments) 

#search pages
searchpages <- searchPages( string="manipal", token=fb_oauth, n=1000)
View(searchpages)


write.csv(searchpages,file="Manipal.csv")

# getting modi page data
getpagedata <- getPage("177526890164",token = fb_oauth,n=50)
View(getpagedata)

# post details
post_details <- getPost("177526890164_10160144556540165",token = fb_oauth,comments = TRUE,likes = FALSE)
class(post_details)
View(post_details$post)
View(post_details$comments)


