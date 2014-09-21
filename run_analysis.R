# Assuming that all the datasets are downloaded to the working directory and unzipped
# The directory names should not be changed, altough it may be required to change path 
# style specifically to the oparating system. In case there is no dataset downloaded 
# uncomment the two following lines.

#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "data_project.zip", method = "curl")
#unzip("data_project.zip")

# ==========================================================================================

# Loading required libraries
library(reshape);library(plyr);library(dplyr)

## Load features file to name variables in the dataset
features  <- read.table("UCI HAR Dataset/features.txt")
names(features) <- c("f.order","f.name")

features <- features %>% # Lets remove comma from the names
  mutate(f.name = gsub(",","-", f.name))

## Load datasets (testing)
sub.test <- read.table("UCI HAR Dataset//test/subject_test.txt", header = FALSE)
names(sub.test) <- "subject"

y.test <- read.table("UCI HAR Dataset//test/y_test.txt", header = FALSE)
names(y.test) <- "activity"

x.test  <- read.table("UCI HAR Dataset//test/X_test.txt", header = FALSE )
length(x.test) == nrow(features) ## Shoudl be true
names(x.test) <- features$f.name

test.dataset <- cbind(sub.test, y.test, x.test)

## Load datasets (training)
sub.train <- read.table("UCI HAR Dataset//train/subject_train.txt",header = FALSE)
names(sub.train) <- "subject"

y.train <- read.table("UCI HAR Dataset//train/y_train.txt", header = FALSE)
names(y.train) <- "activity"

x.train  <- read.table("UCI HAR Dataset//train/X_train.txt",header = FALSE )
length(x.train) == nrow(features) ## should be true
names(x.train) <- features$f.name

train.dataset <- cbind(sub.train,y.train,x.train)

## Merging all together training and testing datasets

full.dataset <- rbind(train.dataset,test.dataset)

# 2. Selecting the features (measurement) that are mean or std only with a help of regular expressions
selected.feature.names <- features[grep("(mean\\(\\))|(std\\(\\))",features$f.name),2]
extracted.dataset <- full.dataset[,c("subject","activity",selected.feature.names)]

# 3. Uses descriptive activity names to name the activities in the data set

## Load activity names
activity  <- read.table("UCI HAR Dataset//activity_labels.txt")
names(activity) <- c("a.order","a.name")

## Replacing the activity with a name
matched.activity <- match(extracted.dataset$activity,table = activity$a.order)
extracted.dataset$activity <- activity[matched.activity,2]

## For the next two steps the dataset will be melted
melt.dataset <- melt(extracted.dataset,c("subject","activity"))

# 4. Appropriately labels the data set with descriptive variable names. 

## Making some sanitization of the names to improve readability

v <- melt.dataset$variable
v <- gsub("-","",v)
v <- sub("mean\\(\\)","Mean",v)
v <- sub("std\\(\\)","StDev",v)
v <- sub("^t","Time",v)
v <- sub("^f","Frequency",v)
#v <- gsub("([A-Z]{1}[a-z]+)","\\1 ",v, perl=TRUE) # add spaces for reading convenience (optional)
v  <- sub("Acc","Acceleration",v)
v  <- sub("Mag","Magnitude",v)
v  <- sub("Gyro","Gyroscope",v)

melt.dataset$variable <- v

# 5. From the data set in step 4, creates a second, independent tidy dataset with the average of each variable for each activity and each subject.
smry.dataset <- ddply(melt.dataset,.variables = c("subject","activity","variable"),summarise, average=mean(value))

# for analytical purposes we can cast the dataset back 

final.dataset <- cast(smry.dataset,formula = subject+activity~variable)

# Saving file
write.table(final.dataset,  "final_dataset.csv", row.name=FALSE)

# optionally clean all
# rm(list=ls())
