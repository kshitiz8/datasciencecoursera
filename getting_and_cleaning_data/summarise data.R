fileUrl <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./getting_and_cleaning_data/restaurants.csv",method="curl")
restData <- read.csv("./getting_and_cleaning_data/restaurants.csv")
head(restData,n=3)
tail(restData,n=3)
summary(restData)
str(restData)
quantile(restData$councilDistrict,na.rm =T)
quantile(restData$councilDistrict,na.rm =T,c(0.2,0.8))
table(restData$zipCode,useNA = "ifany")

sum(is.na(restData$name))
any(is.na(restData$name))
all(is.na(restData$name))
colSums(is.na(restData))

table(restData$zipCode %in% c("21212","21213"))
restData$zipCode %in% c("21212","21213")
restData[restData$zipCode %in% c("21212","21213"), ]

data(UCBAdmissions)
DF = as.data.frame(UCBAdmissions)
xtabs(Freq ~ Gender + Admit, data = DF)

warpbreaks$replicate = rep(1:9,len = 54)
xt = xtabs(breaks ~. , data = warpbreaks)
ftable(xt)

fakeData = rnorm(1e5)
object.size(fakeData)
print(object.size(fakeData), units = "Mb")