# Boxplot of C-R difference
# Brian Stock
# 8/4/14

setwd("/home/stock/data/Marine_Data")

cox <- read.csv("data_cox_2012.csv")
n.obs <- length(cox[,1])
n.sim <- 1000
c <- array(NA,dim=c(n.sim,n.obs))
r <- array(NA,dim=c(n.sim,n.obs))
diff <- array(NA,dim=c(n.sim,n.obs))
for(i in 1:n.sim){
	for(j in 1:n.obs){
		c[i,j] <- cox$CS[j]									# no variation in C data (only one value, with no SD)
		r[i,j] <- sample(c(cox$R_low[j], cox$R_high[j]),1)	# choose either high or low researcher randomly
	}
}
diff <- c - r
diff <- as.vector(diff)
boxplot(diff)

dev.new()
bernard <- read.csv("data_bernard_2013.csv")
n.obs <- length(bernard[,1])
n.sim <- 1000
c <- array(NA,dim=c(n.sim,n.obs))
r <- array(NA,dim=c(n.sim,n.obs))
diff <- array(NA,dim=c(n.sim,n.obs))
for(i in 1:n.sim){
	for(j in 1:n.obs){
		c[i,j] <- rnorm(1, bernard$CS_data[j], bernard$CS_data_SE[j])	# NOTE: using SE as SD for now... can't find n in paper
		r[i,j] <- rnorm(1, bernard$R_data[j], bernard$R_data_RE[j])		# should probably change the 'RE' to 'SE' in the csv
	}
}
diff <- c - r
diff <- cbind(melt(diff[,1:4])$value, melt(diff[,5:8])$value, melt(diff[,9:12])$value, melt(diff[,13:16])$value)
boxplot(diff,names=levels(bernard$species))