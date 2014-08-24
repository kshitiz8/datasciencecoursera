set.seed(13435)
X <- data.frame("var1" = sample(1:5),
                "var2" = sample(6:10),
                "var3" = sample(11:15));
X <- X[sample(1:5),];
X$var2[c(1,3)] = NA
X[,1]
X[,"var1"]
X[1:2,"var2"]
X[(X$var1 <= 3 & X$var3 > 11),]
x[which(X$var>8)]
sort(X$var1,decreasing = TRUE, na.last = T)
X[order(X$var1),]
X[order(X$var2,X$var1,na.last = T),]
library(plyr)
arrange(X,var1)
arrange(X,desc(var1))
X$var4 < rnorm(5)
Y <- cbind(X,rnorm(5))
#http://www.biostat.jhsph.edu/~ajaffe/lec_winterR/Lecture%202.pdf