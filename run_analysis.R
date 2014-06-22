#run_analysis.R
#===============

#Install packages
install.packages("plyr")

##=====Loads, combines and cleans the data to create a single complete dataset=====##
        

#Loads data and combines the subject files

subject <- rbind(
        read.table("./UCI HAR Dataset/train/subject_train.txt", col.names="Subject"),
        read.table("./UCI HAR Dataset/test/subject_test.txt", col.names="Subject")
)

#Loads data and combines the y_train and y_test (activity) files

activity <- rbind(
        read.table("./UCI HAR Dataset/train/y_train.txt", col.names="aCode"),
        read.table("./UCI HaR Dataset/test/y_test.txt", col.names="aCode")
)

#Loads the activity labels and maps them to th activity vector as a column called Name

aCode <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names=c("aCode", "Label"))

activity$Activity = aCode$Label[activity$aCode]


#Loads features file, cleans the measurement labels to exclude () and -

vLabels <- read.table("./UCI HAR Dataset/features.txt", col.names=c("fCode", "vLabel"))
lFix <- vLabels$vLabel
lFix <- gsub("\\(\\)", "",lFix)
cLabel <- gsub("\\-", "\\_", lFix)

#Loads the x-train dataset with the clean measurement labels as the column names        

x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = cLabel)

#loads the x-text dataset with the clean measurement labels as the column names

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = cLabel)

#combines the x-train and x-test datasets

cDataset <- rbind(x_train, x_test)

#adds the subject and activity to the cDataset as the first 2 columns

cMap <- cbind(subject, activity$Activity)
colnames(cMap) <- c("Subject", "Activity")

cDataset <- cbind(cMap, cDataset)
head(cDataset)
dim(cDataset)


##=====Create tidy data set with only Mean and STD measurements=====##

#subset data to include only those measurements that are mean or std measurements

mVariables <- grep("mean", names(cDataset))
sVariables <- grep("std", names(cDataset))

dataset2 <- cDataset[, c(1, 2, mVariables, sVariables)]

head(dataset2)
dim(dataset2)


##=====Create tidy data set with the average by subject and activity for each measurement=====##

# - Calculates the mean of each variable, aggregating over activity and subject.

library("plyr")

dataset2 <- arrange(dataset2, dataset2[, 1], dataset2[, 2])
dataset2 <- arrange(dataset2, dataset2[, 1], dataset2[, 2])

tidy <- ddply(dataset2, .(Subject, Activity), .fun=function(x){
        colMeans(x[,-c(1:2)])
})

head(tidy)
dim(tidy)
summary(tidy)

# - Writes the resulting tidy dataset to a .txt file in the working directory

write.table(tidy, "tidy_dataset.txt", sep=",", row.names=FALSE)



