#### Import data
## Two data tables
# observation table
cc_obs <- read.csv("/Users/aeschmidty/Google Drive/OSS Marine Project/Data/Bird and Mammal Census - CalCOFI cruises.csv",header=TRUE)
head(t)
tail(t)
summary(t)
# transect table
cc_trans<- read.csv("/Users/aeschmidty/Google Drive/OSS Marine Project/Data/Bird and Mammal Census Log - CalCOFI cruises.csv",header=TRUE)
head(t)
tail(t)
summary(t)
names(t)

head(t2)

# replace column headings
# pull GIS.key from transect table
# find table of AOU alpha codes
# add columns for Genus and species
# add other columns to make consistent with mega database?

t <- read.csv("/Users/aeschmidty/Google Drive/OSS Marine Project/Data/Bird and Mammal Census - CalCOFI cruises.csv",header=TRUE)
head(t)
tail(t)
summary(t)
names(t)
t2 <- read.csv("/Users/aeschmidty/Google Drive/OSS Marine Project/Data/Bird and Mammal Census Log - CalCOFI cruises.csv",header=TRUE)

head(t2)

