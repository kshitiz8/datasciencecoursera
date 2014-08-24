###### q1 #####################################################################
library(httr)
# 1. Find OAuth settings for github:
# http://developer.github.com/v3/oauth/
oauth_endpoints("github")
# 2. Register an application at https://github.com/settings/applications
# Insert your values below - if secret is omitted, it will look it up in
# the GITHUB_CONSUMER_SECRET environmental variable.
#
# Use http://localhost:1410 as the callback url
myapp <- oauth_app("github", "56b637a5baffac62cad9")
# 3. Get OAuth credentials
#install.packages('httpuv')
library(httpuv)
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
# 4. Use API
gtoken <- config(token = github_token)

req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
library(jsonlite)
x = fromJSON(jsonlite::toJSON(content(req)))
x[x$name == 'datasharing','created_at']
#req <- GET("https://api.github.com/rate_limit", gtoken)
#stop_for_status(req)
#content(req)
# OR:
#req <- with_config(gtoken, GET("https://api.github.com/rate_limit"))
#stop_for_status(req)
#content(req)

###### q2 #####################################################################
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv","getdata_Fdata_ss06pid.csv",method = "curl")
#install.packages('sqldf')
acs = read.csv("getting_and_cleaning_data/quiz2/getdata_Fdata_ss06pid.csv")
library(sqldf)
sqldf("select * from acs where AGEP < 50 and pwgtp1")
sqldf("select distinct AGEP from acs")
