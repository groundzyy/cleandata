#Study design  

The original data is downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The training and testing data including X, y, subjects are loaded from corresponding files and are merged together to form one dataset. We only kept the columns related to mean and standard deviation. Finally we generated a new dataset with only average of each variable for each activity and each subject.  

#Code book  
tBodyAcc-mean()-X  
	numeric  
	mean of tBodyAcc in X  
tBodyAcc-mean()-Y  
	numeric  
	mean of tBodyAcc in Y  
tBodyAcc-mean()-Z  
	numeric  
	mean of tBodyAcc in Z  
tBodyAcc-std()-X  
	numeric  
	standard deviation of tBodyAcc in X  
tBodyAcc-std()-Y  
	numeric  
	standard deviation of tBodyAcc in Y  
tBodyAcc-std()-Z  
	numeric  
	standard deviation of tBodyAcc in Z  
tGravityAcc-mean()-X  
	numeric  
	mean of tGravityAcc in X  
tGravityAcc-mean()-Y  
	numeric  
	mean of tGravityAcc in Y  
tGravityAcc-mean()-Z  
	numeric  
	mean of tGravityAcc in Z  
tGravityAcc-std()-X  
	numeric  
	standard deviation of tGravityAcc in X  
tGravityAcc-std()-Y  
	numeric  
	standard deviation of tGravityAcc in Y  
tGravityAcc-std()-Z  
	numeric  
	standard deviation of tGravityAcc in Z  
tBodyAccJerk-mean()-X  
	numeric  
	mean of tBodyAccJerk in X  
tBodyAccJerk-mean()-Y  
	numeric  
	mean of tBodyAccJerk in Y  
tBodyAccJerk-mean()-Z  
	numeric  
	mean of tBodyAccJerk in Z  
tBodyAccJerk-std()-X  
	numeric  
	standard deviation of tBodyAccJerk in X  
tBodyAccJerk-std()-Y  
	numeric  
	standard deviation of tBodyAccJerk in Y  
tBodyAccJerk-std()-Z  
	numeric  
	standard deviation of tBodyAccJerk in Z  
tBodyGyro-mean()-X  
	numeric  
	mean of tBodyGyro in X  
tBodyGyro-mean()-Y  
	numeric  
	mean of tBodyGyro in Y  
tBodyGyro-mean()-Z  
	numeric  
	mean of tBodyGyro in Z  
tBodyGyro-std()-X  
	numeric  
	standard deviation of tBodyGyro in X  
tBodyGyro-std()-Y  
	numeric  
	standard deviation of tBodyGyro in Y  
tBodyGyro-std()-Z  
	numeric  
	standard deviation of tBodyGyro in Z  
tBodyGyroJerk-mean()-X  
	numeric  
	mean of tBodyGyroJerk in X  
tBodyGyroJerk-mean()-Y  
	numeric  
	mean of tBodyGyroJerk in Y  
tBodyGyroJerk-mean()-Z  
	numeric  
	mean of tBodyGyroJerk in Z  
tBodyGyroJerk-std()-X  
	numeric  
	standard deviation of tBodyGyroJerk in X  
tBodyGyroJerk-std()-Y  
	numeric  
	standard deviation of tBodyGyroJerk in Y  
tBodyGyroJerk-std()-Z  
	numeric  
	standard deviation of tBodyGyroJerk in Z  
tBodyAccMag-mean()  
	numeric  
	mean of tBodyAccMag   
tBodyAccMag-std()  
	numeric  
	standard deviation of tBodyAccMag   
tGravityAccMag-mean()  
	numeric  
	mean of tGravityAccMag   
tGravityAccMag-std()  
	numeric  
	standard deviation of tGravityAccMag   
tBodyAccJerkMag-mean()  
	numeric  
	mean of tBodyAccJerkMag   
tBodyAccJerkMag-std()  
	numeric  
	standard deviation of tBodyAccJerkMag   
tBodyGyroMag-mean()  
	numeric  
	mean of tBodyGyroMag   
tBodyGyroMag-std()  
	numeric  
	standard deviation of tBodyGyroMag   
tBodyGyroJerkMag-mean()  
	numeric  
	mean of tBodyGyroJerkMag   
tBodyGyroJerkMag-std()  
	numeric  
	standard deviation of tBodyGyroJerkMag   
fBodyAcc-mean()-X  
	numeric  
	mean of fBodyAcc in X  
fBodyAcc-mean()-Y  
	numeric  
	mean of fBodyAcc in Y  
fBodyAcc-mean()-Z  
	numeric  
	mean of fBodyAcc in Z  
fBodyAcc-std()-X  
	numeric  
	standard deviation of fBodyAcc in X  
fBodyAcc-std()-Y  
	numeric  
	standard deviation of fBodyAcc in Y  
fBodyAcc-std()-Z  
	numeric  
	standard deviation of fBodyAcc in Z  
fBodyAccJerk-mean()-X  
	numeric  
	mean of fBodyAccJerk in X  
fBodyAccJerk-mean()-Y  
	numeric  
	mean of fBodyAccJerk in Y  
fBodyAccJerk-mean()-Z  
	numeric  
	mean of fBodyAccJerk in Z  
fBodyAccJerk-std()-X  
	numeric  
	standard deviation of fBodyAccJerk in X  
fBodyAccJerk-std()-Y  
	numeric  
	standard deviation of fBodyAccJerk in Y  
fBodyAccJerk-std()-Z  
	numeric  
	standard deviation of fBodyAccJerk in Z  
fBodyGyro-mean()-X  
	numeric  
	mean of fBodyGyro in X  
fBodyGyro-mean()-Y  
	numeric  
	mean of fBodyGyro in Y  
fBodyGyro-mean()-Z  
	numeric  
	mean of fBodyGyro in Z  
fBodyGyro-std()-X  
	numeric  
	standard deviation of fBodyGyro in X  
fBodyGyro-std()-Y  
	numeric  
	standard deviation of fBodyGyro in Y  
fBodyGyro-std()-Z  
	numeric  
	standard deviation of fBodyGyro in Z  
fBodyAccMag-mean()  
	numeric  
	mean of fBodyAccMag   
fBodyAccMag-std()  
	numeric  
	standard deviation of fBodyAccMag   
fBodyBodyAccJerkMag-mean()  
	numeric  
	mean of fBodyBodyAccJerkMag   
fBodyBodyAccJerkMag-std()  
	numeric  
	standard deviation of fBodyBodyAccJerkMag   
fBodyBodyGyroMag-mean()  
	numeric  
	mean of fBodyBodyGyroMag   
fBodyBodyGyroMag-std()  
	numeric  
	standard deviation of fBodyBodyGyroMag   
fBodyBodyGyroJerkMag-mean()  
	numeric  
	mean of fBodyBodyGyroJerkMag   
fBodyBodyGyroJerkMag-std()  
	numeric  
	standard deviation of fBodyBodyGyroJerkMag   
activity  
	category  
	Activity Type  
		1	WALKING  
		2	WALKING_UPSTAIRS  
		3  WALKING_DOWNSTAIRS  
		4	SITTING  
		5	STANDING  
		6	LAYING  
subject  
	category  
	Identifier of the subject who performed the activity for each window sample. Range: 1 to 30.  
sub_act  
	category  
	Identifier of each subject with each activity. Range: 1 to 180.