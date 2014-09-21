#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "data_project.zip", method = "curl")
#unzip("data_project.zip")

library(reshape);library(plyr);library(dplyr)

## Load features file to name variables in the dataset
features  <- read.table("UCI HAR Dataset/features.txt")
names(features) <- c("f.order","f.name")

features <- features %>%
  mutate(f.name = gsub(",","-", f.name))


## Load datasets (testing)
sub.test <- read.table("UCI HAR Dataset//test/subject_test.txt", header = FALSE)
names(sub.test) <- "subject"

y.test <- read.table("UCI HAR Dataset//test/y_test.txt", header = FALSE)
names(y.test) <- "activity"

x.test  <- read.table("UCI HAR Dataset//test/X_test.txt", header = FALSE )
length(x.test) == nrow(features) ## if true rename
names(x.test) <- features$f.name

test.dataset <- cbind(sub.test, y.test, x.test)
test.dataset$type <- "test"


## Load datasets (training)
sub.train <- read.table("UCI HAR Dataset//train/subject_train.txt",header = FALSE)
names(sub.train) <- "subject"

y.train <- read.table("UCI HAR Dataset//train/y_train.txt", header = FALSE)
names(y.train) <- "activity"

x.train  <- read.table("UCI HAR Dataset//train/X_train.txt",header = FALSE )
length(x.train) == nrow(features) ## if true rename
names(x.train) <- features$f.name

train.dataset <- cbind(sub.train,y.train,x.train)
train.dataset$type <- "train"

## Merging all together

full.dataset <- rbind(train.dataset,test.dataset)

# 2. Selecting the features (measurement) that are mean or std only
selected.feature.names <- features[grep("(mean\\(\\))|(std\\(\\))",features$f.name),2]
extracted.dataset <- full.dataset[,c("subject","activity","type",selected.feature.names)]

## Load activity names
activity  <- read.table("UCI HAR Dataset//activity_labels.txt")
names(activity) <- c("a.order","a.name")

## Replacing the activity with a name
matched.activity <- match(extracted.dataset$activity,table = activity$a.order)
extracted.dataset$activity <- activity[matched.activity,2]

## For the next two steps the dataset will be melted
melt.dataset <- melt(extracted.dataset,c("type","subject","activity"))

# it makes easier to rename the features and  make variables more descriptive for the purpose of the step 5
head(melt.dataset)

# 4. Appropriately labels the data set with descriptive variable names. 

## Making some sanitization of the names to improve readability

v <- melt.dataset$variable
v <- gsub("-","",v)
v  <- sub("mean\\(\\)","Mean",v)
v  <- sub("std\\(\\)","StDev",v)
v <- sub("^t","Time",v)
v <- sub("^f","Frequency",v)
#v <- gsub("([A-Z]{1}[a-z]+)","\\1 ",v, perl=TRUE)
v  <- sub("Acc","Acceleration",v)
v  <- sub("Mag","Magnitude",v)
v  <- sub("Gyro","Gyroscope",v)

melt.dataset$variable <- v

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
smry.dataset <- ddply(melt.dataset,.variables = c("subject","activity","variable"),summarise, average=mean(value))

# for analytical purposes we can cast the dataset back 

final.dataset <- cast(smry.dataset,formula = subject+activity~variable)


