CodeBook
=================================
### Introduction
This is a code book that describes the variables, the data, and any transformations or work that I performed to clean up the raw data come from UCI.

### Raw Data
The raw data are collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 
### Data
1. 'train/X_train.txt': Training set.
2. 'train/y_train.txt': Training labels.
3. 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample for the training data. Its range is from 1 to 30. 
4. 'test/X_test.txt': Test set.
5. 'test/y_test.txt': Test labels.
6. 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample for the test data. Its range is from 1 to 30. 
7. 'features.txt': List of all features.
8. 'activity_labels.txt': Links the class labels with their activity name. 

### Variables
1. 'subject': 
Represent the volunteer who performed the activity

2. 'activity': 
Six activities (laying, sitting, standing, walking, walkingDownstairs, walkingUpstairs) performed by each volunteer

3. 'tBodyAccMeanX, tBodyAccMeanY, tBodyAccMeanZ, tBodyAccStdX, tBodyAccStdY, tBodyAccStdZ, tGravityAccMeanX, tGravityAccMeanY, tGravityAccMeanZ, tGravityAccStdX, tGravityAccStdY, tGravityAccStdZ, tBodyAccJerkMeanX, tBodyAccJerkMeanY, tBodyAccJerkMeanZ, tBodyAccJerkStdX, tBodyAccJerkStdY, tBodyAccJerkStdZ, tBodyGyroMeanX, tBodyGyroMeanY, tBodyGyroMeanZ, tBodyGyroStdX, tBodyGyroStdY, tBodyGyroStdZ, tBodyGyroJerkMeanX, tBodyGyroJerkMeanY, tBodyGyroJerkMeanZ, tBodyGyroJerkStdX, tBodyGyroJerkStdY, tBodyGyroJerkStdZ, tBodyAccMagMean, tBodyAccMagStd, tGravityAccMagMean, tGravityAccMagStd, tBodyAccJerkMagMean, tBodyAccJerkMagStd, tBodyGyroMagMean, tBodyGyroMagStd, tBodyGyroJerkMagMean, tBodyGyroJerkMagStd, fBodyAccMeanX, fBodyAccMeanY, fBodyAccMeanZ, fBodyAccStdX, fBodyAccStdY, fBodyAccStdZ, fBodyAccJerkMeanX, fBodyAccJerkMeanY, fBodyAccJerkMeanZ, fBodyAccJerkStdX, fBodyAccJerkStdY, fBodyAccJerkStdZ, fBodyGyroMeanX, fBodyGyroMeanY, fBodyGyroMeanZ, fBodyGyroStdX, fBodyGyroStdY, fBodyGyroStdZ, fBodyAccMagMean, fBodyAccMagStd, fBodyBodyAccJerkMagMean, fBodyBodyAccJerkMagStd, fBodyBodyGyroMagMean, fBodyBodyGyroMagStd, fBodyBodyGyroJerkMagMean, fBodyBodyGyroJerkMagStd':
The average value of each measurement captured from the accelerometer and gyroscope.
 
### Transformations
1. Merged the training and the test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement. 
3. Used descriptive activity names to name the activities in the data set, 

 Original Activity Name           | New Activity Name 
 ------------------------------- | -------------------------- 
 `LAYING`                     | `laying`
 `SITTING`            | `sitting`
  `STANDING`           | `standing`
 `WALKING`             | `walking`
  `WALKING_DOWNSTAIRS`           | `walkingDownstairs`
 `WALKING_UPSTAIRS`             | `walkingUpstairs`


4. Appropriately labels the data set with descriptive variable names. 

| Original variable Name | New variable Name |
| ------------------------------- | -------------------------- |
| V1 | subject |
| V1 | activity |
| tBodyAcc-mean()-X | tBodyAccMeanX |
| tBodyAcc-mean()-Y | tBodyAccMeanY |
| tBodyAcc-mean()-Z | tBodyAccMeanZ |
| tBodyAcc-std()-X | tBodyAccStdX |
| tBodyAcc-std()-Y | tBodyAccStdY |
| tBodyAcc-std()-Z | tBodyAccStdZ |
| tGravityAcc-mean()-X | tGravityAccMeanX |
| tGravityAcc-mean()-Y | tGravityAccMeanY |
| tGravityAcc-mean()-Z | tGravityAccMeanZ |
| tGravityAcc-std()-X | tGravityAccStdX |
| tGravityAcc-std()-Y | tGravityAccStdY |
| tGravityAcc-std()-Z | tGravityAccStdZ |
| tBodyAccJerk-mean()-X | tBodyAccJerkMeanX |
| tBodyAccJerk-mean()-Y | tBodyAccJerkMeanY |
| tBodyAccJerk-mean()-Z | tBodyAccJerkMeanZ |
| tBodyAccJerk-std()-X | tBodyAccJerkStdX |
| tBodyAccJerk-std()-Y | tBodyAccJerkStdY |
| tBodyAccJerk-std()-Z | tBodyAccJerkStdZ |
| tBodyGyro-mean()-X | tBodyGyroMeanX |
| tBodyGyro-mean()-Y | tBodyGyroMeanY |
| tBodyGyro-mean()-Z | tBodyGyroMeanZ |
| tBodyGyro-std()-X | tBodyGyroStdX |
| tBodyGyro-std()-Y | tBodyGyroStdY |
| tBodyGyro-std()-Z | tBodyGyroStdZ |
| tBodyGyroJerk-mean()-X | tBodyGyroJerkMeanX |
| tBodyGyroJerk-mean()-Y | tBodyGyroJerkMeanY |
| tBodyGyroJerk-mean()-Z | tBodyGyroJerkMeanZ |
| tBodyGyroJerk-std()-X | tBodyGyroJerkStdX |
| tBodyGyroJerk-std()-Y | tBodyGyroJerkStdY |
| tBodyGyroJerk-std()-Z | tBodyGyroJerkStdZ |
| tBodyAccMag-mean() | tBodyAccMagMean |
| tBodyAccMag-std() | tBodyAccMagStd |
| tGravityAccMag-mean() | tGravityAccMagMean |
| tGravityAccMag-std() | tGravityAccMagStd |
| tBodyAccJerkMag-mean() | tBodyAccJerkMagMean |
| tBodyAccJerkMag-std() | tBodyAccJerkMagStd |
| tBodyGyroMag-mean() | tBodyGyroMagMean |
| tBodyGyroMag-std() | tBodyGyroMagStd |
| tBodyGyroJerkMag-mean() | tBodyGyroJerkMagMean |
| tBodyGyroJerkMag-std() | tBodyGyroJerkMagStd |
| fBodyAcc-mean()-X | fBodyAccMeanX |
| fBodyAcc-mean()-Y | fBodyAccMeanY |
| fBodyAcc-mean()-Z | fBodyAccMeanZ |
| fBodyAcc-std()-X | fBodyAccStdX |
| fBodyAcc-std()-Y | fBodyAccStdY |
| fBodyAcc-std()-Z | fBodyAccStdZ |
| fBodyAccJerk-mean()-X | fBodyAccJerkMeanX |
| fBodyAccJerk-mean()-Y | fBodyAccJerkMeanY |
| fBodyAccJerk-mean()-Z | fBodyAccJerkMeanZ |
| fBodyAccJerk-std()-X | fBodyAccJerkStdX |
| fBodyAccJerk-std()-Y | fBodyAccJerkStdY |
| fBodyAccJerk-std()-Z | fBodyAccJerkStdZ |
| fBodyGyro-mean()-X | fBodyGyroMeanX |
| fBodyGyro-mean()-Y | fBodyGyroMeanY |
| fBodyGyro-mean()-Z | fBodyGyroMeanZ |
| fBodyGyro-std()-X | fBodyGyroStdX |
| fBodyGyro-std()-Y | fBodyGyroStdY |
| fBodyGyro-std()-Z | fBodyGyroStdZ |
| fBodyAccMag-mean() | fBodyAccMagMean |
| fBodyAccMag-std() | fBodyAccMagStd |
| fBodyBodyAccJerkMag-mean() | fBodyBodyAccJerkMagMean |
| fBodyBodyAccJerkMag-std() | fBodyBodyAccJerkMagStd |
| fBodyBodyGyroMag-mean() | fBodyBodyGyroMagMean |
| fBodyBodyGyroMag-std() | fBodyBodyGyroMagStd |
| fBodyBodyGyroJerkMag-mean() | fBodyBodyGyroJerkMagMean |
| fBodyBodyGyroJerkMag-std() | fBodyBodyGyroJerkMagStd |
