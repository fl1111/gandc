main <- function(){
  
  
  #Part 1
  #Reads the Train and Test data and merge them into 1 data set
  #Utilizes getData function written below - getData is for reading and merging of columns from disparate Test and Train files
  trainData <- getData("train/x_train.txt", "train/y_train.txt", "train/subject_train.txt")
  
  testData <- getData("test/x_test.txt","test/y_test.txt", "test/subject_test.txt")
  
  data <- rbind(trainData,testData)
  
  #Part 2
  #Identifies the Mean and Standard deviation(std) features from features.txt using getFeaturesMeanStd function written below
  #Gets a subset of the data frame from Part 1 using the identified Mean and STD features.
  #Extracts the Mean and Standard Deviation columns from the data extracted from part 1
  featuresMeanStd <- getFeaturesMeanStd("features.txt")
  
  data <- data[,c(1,2,featuresMeanStd$V1+2)]
  
  
  #Part 4
  #Appropriately labels the data set with descriptive variable names by
  #Using the getTidyFeaturesHeader function written below - this replaces 
  #acronyms and shortforms with their full form
  featuresHeader <- as.character(featuresMeanStd$V2)
  
  featuresHeader <- getTidyFeaturesHeader(featuresHeader)
  
  colnames(data)[3:ncol(data)] <- featuresHeader
  
  #Part 3
  #In order to use descriptive activity names, this script 
  #merges the existing data from above steps with the data from the
  #activity_labels.txt.
  #By identifying a key called "Label" (number that corresponds to a particular activity), we are able to display
  #the more descriptive activity name stored in the activity_labels.txt file
  activities <- read.table("activity_labels.txt")
  
  names(activities) <- c("Label","ActivityName")
  
  mergedData <- merge(activities, data)
  
  #Part 5
  #This creates a tidy data set with the average of each variable for each activity and each subject.
  #This sorts the data by the Label column
  
  aggregateData <- aggregate(mergedData[, 4:ncol(mergedData)],
                     by=list(Label = mergedData$Label, ActivityName = mergedData$ActivityName, Subject = mergedData$Subject),
                     mean)
  
  tidyData <- aggregateData[order(aggregateData$Label),]
  
  tidyData
  #write.table(tidyData, file = "Tidy.txt", row.names = FALSE)
}

#getData reads and merges data (via cbind) from disparate Test and Train files
getData <- function(setPath, labelsPath, subjectsPath){
 
  set <- read.table(setPath)
  labels <- read.table(labelsPath, col.names = "Label")
  subjects <- read.table(subjectsPath, col.names = "Subject")
  
  data <- cbind(labels,subjects, set)

  data

}

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

#Simply identifies the features associated with mean and the standard deviation(STD)
#Uses simple regex to extract the mean and STD features
getFeaturesMeanStd <- function(featuresPath){
  
  features <- read.table(featuresPath)
  
  featuresMeanStd <- grep("mean\\(\\)|std\\(\\)", features$V2)
  
  featuresMeanStd <- features[featuresMeanStd,]
  
  featuresMeanStd
  
}