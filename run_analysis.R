library(data.table)
library(dplyr)

filename <- "C:/Users/samsung/Desktop/Data science/Getting and cleaning data/getdata_dataset.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="libcurl")
}  

# unzip zip file containing data if data directory doesn't already exist
dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
  zipFile <- "UCI HAR Dataset.zip"
  unzip(zipFile)
}


activity<-fread("C:/Users/samsung/Desktop/Data science/Getting and cleaning data/UCI HAR Dataset/activity_labels.txt")
colnames(activity) <- c("Id", "Label")

features<-fread("C:/Users/samsung/Desktop/Data science/Getting and cleaning data/UCI HAR Dataset/features.txt")

#Loading Train Data

trainSubject<- fread("C:/Users/samsung/Desktop/Data science/Getting and cleaning data/UCI HAR Dataset/train/subject_train.txt")

trainValues <- fread("C:/Users/samsung/Desktop/Data science/Getting and cleaning data/UCI HAR Dataset/train/X_train.txt")

trainingActivity <- fread("C:/Users/samsung/Desktop/Data science/Getting and cleaning data/UCI HAR Dataset/train/y_train.txt")

#Loading Test Data

testSubject<- fread("C:/Users/samsung/Desktop/Data science/Getting and cleaning data/UCI HAR Dataset/test/subject_test.txt")

testValues <- fread("C:/Users/samsung/Desktop/Data science/Getting and cleaning data/UCI HAR Dataset/test/X_test.txt")

testActivity <- fread("C:/Users/samsung/Desktop/Data science/Getting and cleaning data/UCI HAR Dataset/test/y_test.txt")

# Merging the datasets

merged_data<- rbind(
  
              cbind(trainSubject,trainValues,trainingActivity),
              cbind(testSubject,testValues,testActivity)
  )

# Removing others
rm(trainSubjects, traingValues, trainActivity, 
   testSubject, testValue, testActivity)

#setting column names
colnames(merged_data)<- unlist(c("subject",features[,2],"activity")) 


# determine columns of data set to keep , based on column names

columnsToKeep <- grepl("subject|activity|mean|std", colnames(merged_data))

# Taking only those columns

merged_data <- merged_data[,..columnsToKeep]

# get column names
merged_data_colnames <- colnames(merged_data)

# remove special characters
merged_data_colnames <- gsub("[\\(\\)-]", "", merged_data_colnames)

# expand abbreviations and clean up names
merged_data_colnames <- gsub("^f", "frequencyDomain", merged_data_colnames)
merged_data_colnames <- gsub("^t", "timeDomain", merged_data_colnames)
merged_data_colnames <- gsub("Acc", "Accelerometer", merged_data_colnames)
merged_data_colnames <- gsub("Gyro", "Gyroscope", merged_data_colnames)
merged_data_colnames <- gsub("Mag", "Magnitude", merged_data_colnames)
merged_data_colnames <- gsub("mean", "Mean", merged_data_colnames)
merged_data_colnames <- gsub("std", "StandardDeviation", merged_data_colnames)
merged_data_colnames <- gsub("Freq", "Frequency", merged_data_colnames)

# correct typo
merged_data_colnames <- gsub("BodyBody", "Body", merged_data_colnames)

# use new labels as column names
colnames(merged_data) <- merged_data_colnames

#grouping by columns and summarising

merged_data_final <- merged_data %>% 
  group_by(subject, activity) %>%
  summarise_each(funs=mean)


# creating output  file "tidy_data.txt"
write.table(merged_data_final, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)


