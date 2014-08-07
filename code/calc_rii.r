# Boxplot of C-R difference
# Brian Stock
# 8/4/14

setwd("/home/stock/data/Marine_Data")

filenames <- c("data_cox_2012_rev.csv","data_bernard_2013.csv")
n.files <- length(filenames)
Rii <- matrix(NA,nrow=n.files,ncol=2)
colnames(Rii) <- c("Mean","SE")

# file needs to have "C" and "R" data columns
calc_rii <- function(filename){
	x <- read.csv(filename)
	r_ii <- (x$C - x$R) / (x$C + x$R)
	mean <- mean(r_ii)
	se <- sqrt(var(r_ii)/length(r_ii))
	return(c(mean,se))
}

for(file in 1:n.files){
	Rii[file,] <- calc_rii(filenames[file])
}

# cox <- read.csv("data_cox_2012.csv")
# R <- apply(cbind(cox$R_low,cox$R_high),1,mean)
# r_ii <- (cox$C - R) / (cox$C + R)
# mean <- mean(r_ii)
# se <- sqrt(var(r_ii)/length(r_ii))

# bernard <- read.csv("data_bernard_2013.csv")
# r_ii <- (bernard$CS_data - bernard$R_data) / (bernard$CS_data + bernard$R_data)
# mean <- c(mean,mean(r_ii))
# se <- c(se,sqrt(var(r_ii)/length(r_ii)))
