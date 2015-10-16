## Step 1. Merges the training and the test data sets

print("Processing step 1 ...")
# Read training data, label and subject
trainData <- read.table("./data/train/X_train.txt")
trainLabel <- read.table("./data/train/y_train.txt")
trainSubject <- read.table("./data/train/subject_train.txt")

# Read test data, label and subject
testData <- read.table("./data/test/X_test.txt")
testLabel <- read.table("./data/test/y_test.txt") 
testSubject <- read.table("./data/test/subject_test.txt")

# Merge training and test data, label and subject
joinData <- rbind(trainData, testData)
joinLabel <- rbind(trainLabel, testLabel)
joinSubject <- rbind(trainSubject, testSubject)

## Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.

print("Processing step 2 ...")
# Read features data
features <- read.table("./data/features.txt")

# Get mean and standard deviation measurement variable name
meanStdMeasurement <- grep("mean\\(\\)|std\\(\\)", features[, 2])

# Extract mean and standard deviation measurement data from merged data
joinData <- joinData[, meanStdMeasurement]

# Use features data as the title of merged dataset and remove bracket of the title
names(joinData) <- gsub("\\(\\)", "", features[meanStdMeasurement, 2]) 

# capitalize M, S and remove "-" from the column names
names(joinData) <- gsub("mean", "Mean", names(joinData))
names(joinData) <- gsub("std", "Std", names(joinData))
names(joinData) <- gsub("-", "", names(joinData))  

## Step 3. Uses descriptive activity names to name the activities in the data set

print("Processing step 3 ...")
# Read activity data
activity <- read.table("./data/activity_labels.txt")

# Fixing activity name
activity[, 2] <- tolower(gsub("_", "", activity[, 2]))
substr(activity[2, 2], 8, 8) <- toupper(substr(activity[2, 2], 8, 8))
substr(activity[3, 2], 8, 8) <- toupper(substr(activity[3, 2], 8, 8))

# Assign descriptive activity names to dataset
activityLabel <- activity[joinLabel[, 1], 2]
joinLabel[, 1] <- activityLabel

## Step 4. Appropriately labels the data set with descriptive variable names and 
## merge all data into one tidy dataset

print("Processing step 4 ...")
# Change the variable name of the dataset
names(joinLabel) <- "activity"
names(joinSubject) <- "subject"

# Merge the subject, label and data into one tidy dataset named mergeData
mergedData <- cbind(joinSubject, joinLabel, joinData)

## Step 5. From the data set in step 4, creates a second, independent tidy data set with the average
## of each variable for each activity and each subject. Export the result dataset to result.txt

print("Processing step 5 ...")
# Load sqldf package
library(sqldf)
# Define query statement to retrieve subject, activity and average of each variable for each activity and each subject
query1 <- "select subject, activity, "
query2 <-  toString(paste("avg(", names(mergedData)[-(1:2)], ")", sep=""))
query3 <- "from mergedData group by subject, activity"

# Execute the query by sqldf package and assign to result dataset
result <- sqldf(paste(query1, query2, query3))

# Rename the result dataset column header to be descriptive
names(result) <- gsub("avg\\(", "", names(result))
names(result) <- gsub("\\)", "", names(result))

# Export the result data set to result.txt
write.table(result, "result.txt",  row.names = FALSE)

print("Process completed")