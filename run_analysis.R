# prepare the file, download and unzip if not exist
if (!file.exists("UCI HAR Dataset")) {
    if (!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")) {
        url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip";
        download.file(url, "getdata-projectfiles-UCI HAR Dataset.zip");
    }
    unzip("getdata-projectfiles-UCI HAR Dataset.zip")
}

# load train and testing data
train_x <- read.csv("./UCI HAR Dataset//train/X_train.txt", header=FALSE, sep="");
train_y <- read.csv("./UCI HAR Dataset//train/y_train.txt", header=FALSE, sep="");

test_x <- read.csv("./UCI HAR Dataset//test//X_test.txt", header=FALSE, sep="");
test_y <- read.csv("./UCI HAR Dataset//test//y_test.txt", header=FALSE, sep="");

# first bind the variable in X and y into train and test
train <- cbind(train_x, train_y)
test <- cbind(test_x, test_y)

# bind train and test together into one dataset
data <- rbind(train, test)

# load features names
colnames <- read.csv("./UCI HAR Dataset//features.txt", header=FALSE, sep="")
useful_col <- grepl("-mean\\(\\)", colnames[,2]) | grepl("-std\\(\\)", colnames[,2])
data2 <- data[, useful_col]
usefulcolnames <- colnames[useful_col,2]
newcolname <- c(as.character(usefulcolnames), "activity")
names(data2) <- newcolname

# convert activity to descriptive factor
act_labels <- read.csv("./UCI HAR Dataset//activity_labels.txt", header=FALSE, sep="");
act_labels <- act_labels[, 2]
data2$activity <- factor(data2$activity,labels=act_labels)

# load subject
train_sub <- read.csv("./UCI HAR Dataset//train/subject_train.txt", header=FALSE, sep="");
test_sub <- read.csv("./UCI HAR Dataset//test//subject_test.txt", header=FALSE, sep="");
subject <- rbind(train_sub, test_sub)
data2 <- cbind(data2, subject)
colnames(data2)[68] <- "subject"

# create a new  tidy data set 
# with the average of each variable for each activity and each subject.
data2$sub_act <- paste(data2$subject, data2$activity, sep=".")
newdata <- sapply(data2, tapply, data2$sub_act, mean)

# save the new dataset
write.table(newdata, "tidydata.txt", row.name=FALSE)








