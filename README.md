Read Me
==================
### Introduction
This is an explanation on how the run_analysis.R scripts work and how they are connected.

### How to run the script
1. Download the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Unzip the raw data to the r working directory and rename the folder name "UCI HAR Dataset" to "data"
3. In R, type source("run_analysis.R"), below message would be shown,
> [1] "Processing step 1 ..."

> [1] "Processing step 2 ..."

> [1] "Processing step 3 ..."

> [1] "Processing step 4 ..."

> [1] "Processing step 5 ..."

> [1] "Process completed"

4. When "Process completed" is shown, a tidy data set named "result.txt" would be created in the r working directory.

### Explanation of each step of the script
Step 1. Merges the training and the test data sets.
1. Read training data, label and subject
2. Read test data, label and subject
3. Merge training and test data, label and subject

Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Read features data
2. Get mean and standard deviation measurement variable name
3. Extract mean and standard deviation measurement data from merged data
4. Fixing the measurement variable name such as removing bracket, hyphen and capitalize "M" for mean and "S" for "std"

Step 3. Uses descriptive activity names to name the activities in the data set
1. Read activity data
2. Fixing activity name such as removing underscore, space and capitalize the first letter of second word
3. Assign descriptive activity names to dataset

Step 4: Appropriately labels the data set with descriptive variable names. 
1. Change the column name of the dataset
2. Merge the subject, label and data into one dataset named mergeData

Step 5:  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
1. Load sqldf package
2. Define query statement to retrieve subject, activity and average of each variable for each activity and each subject
3. Execute the query by sqldf package and assign to result set
4. Rename the result dataset column header to be descriptive
5. Export the result data set to result.txt