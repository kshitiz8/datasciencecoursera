library(httr)
google = GET("http://www.gogle.com")
yhandle = handle(url = "http://www.yahoo.com")
yahoo = GET(handle = yhandle)
library(foreign)