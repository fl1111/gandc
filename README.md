#Introduction

This script aims to collect, clean and manipulate raw data retrieved from the sensors of Samsung Galaxy S smartphone. It primarily performs the following tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates an independent tidy data set with the average of each variable for each activity and each subject.

#Files

  1. CodeBook.md
  2. README.md
  3. run_analysis.R

#run_analysis.R

###Prequisite 

This script assumes that it is located and executed within the root of the UCI HAR Dataset directory.

###How to run 

execute the following upon loading run_analysis.R
```{r}
 main() 
```

###Description


####Helper Methods
In order to fulfill its primary tasks, the script relies on the following helper functions

1. getData
```{r}
getData <- function(setPath, labelsPath, subjectsPath){
 
  set <- read.table(setPath)
  labels <- read.table(labelsPath, col.names = "Label")
  subjects <- read.table(subjectsPath, col.names = "Subject")
  
  data <- cbind(labels,subjects, set)

  data

}
```
2. getTidyFeaturesHeader

```{r}
#Uses gsub to replace
#acronyms and shortforms of the features with their full form
getTidyFeaturesHeader <- function(features){
  features <- gsub("Acc","Accelerometer",features)
  features <- gsub("Gyro","Gyroscope",features)
  features <- gsub("BodyBody","Body",features)
  features <- gsub("^f","Frequency",features)
  features <- gsub("^t","Time",features)
  features <- gsub("mean","Mean",features)
  features <- gsub("std","STD",features)
  features <- gsub("Mag","Magnitude",features)
  features
  
}

```
3. getFeaturesMeanStd

```{r}
#Simply identifies the features associated with mean and the standard deviation(STD)
#Uses simple regex to extract the mean and STD features
getFeaturesMeanStd <- function(featuresPath){
  
  features <- read.table(featuresPath)
  
  featuresMeanStd <- grep("mean\\(\\)|std\\(\\)", features$V2)
  
  featuresMeanStd <- features[featuresMeanStd,]
  
  featuresMeanStd
  
}
```

####main() function
This is the main method that processes and cleans the given data sets. It does the following steps to accomplish its tasks.

Part 1
Reads the Train and Test data and merge them into 1 data set
It utilizes getData function for reading and merging of columns from disparate Test and Train files

Part 2
Identifies the Mean and Standard deviation(STD) features from features.txt using getFeaturesMeanStd function.
It gets a subset of the data frame from Part 1 using the identified Mean and STD features.
And extracts the Mean and Standard Deviation columns from the data extracted from part 1.

Part 3
In order to use descriptive activity names, this script merges the existing data with the data from the
activity_labels.txt.
By identifying a key called "Label" (number that corresponds to a particular activity), we are able to display the more descriptive activity name stored in the activity_labels.txt file

Part 4 
Appropriately labels the data set with descriptive variable names by using the getTidyFeaturesHeader function - this replaces acronyms and shortforms with their full form

Part 5
This script then uses aggregate function to create a data set with the average of each variable for each activity and each subject.
This finally sorts the data by the Label column
