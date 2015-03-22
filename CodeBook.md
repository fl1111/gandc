---
title: "CodeBook"
output: html_document
---

##Variables and Descriptions


ActivityName - The names of the activities performed by the subjects   
Label - Identifiers that correspond to the ActivityName.    
      1 = Walking,    
      2 = Walking Upstairs,    
      3 = Walking Downstairs,    
      4 = SITTING,    
      5 = STANDING,    
      6 = LAYING      
Subject - Identifiers of the 30 Volunteers between ages 19-48 years old.


The following attributes are the mean and standard deviation values retrieved from sensors (Accelerometer and Gyroscope) as they are utilized by the subjects identified for this project. The raw data consisted of the mean(Denoted by Mean() suffix) and standard deviation(Denoted by STD() suffix) along the time (Denoted by Time prefix) and frequency (Denoted by Frequency prefix and in Hz unit) dimension of the selected features, taking into account the linear(attributes denoted by 'Accelerometer') and angular velocity (attributes denoted by 'Gyroscope') acting on the device. The triaxial signal values from the sensors from all the features are measured and are denoted by the X, Y and Z suffix. 

The following measure the mean and standard deviation of linear velocity captured by accelerometer for body motion along the 3 axis.

TimeBodyAccelerometer-Mean()-X  
TimeBodyAccelerometer-Mean()-Y  
TimeBodyAccelerometer-Mean()-Z  
TimeBodyAccelerometer-STD()-X   
TimeBodyAccelerometer-STD()-Y   
TimeBodyAccelerometer-STD()-Z   

The following measure the mean and standard deviation of linear velocity captured by accelerometer for gravity acting on the body along the 3 axis.

TimeGravityAccelerometer-Mean()-X   
TimeGravityAccelerometer-Mean()-Y   
TimeGravityAccelerometer-Mean()-Z   
TimeGravityAccelerometer-STD()-X    
TimeGravityAccelerometer-STD()-Y    
TimeGravityAccelerometer-STD()-Z    

The following measure the mean and standard deviation of linear velocity captured by accelerometer for jerk/abrupt body motions along the 3 axis.

TimeBodyAccelerometerJerk-Mean()-X    
TimeBodyAccelerometerJerk-Mean()-Y    
TimeBodyAccelerometerJerk-Mean()-Z    
TimeBodyAccelerometerJerk-STD()-X   
TimeBodyAccelerometerJerk-STD()-Y   
TimeBodyAccelerometerJerk-STD()-Z   

The following measure the mean and standard deviation of angular velocity captured by gyroscope for body motions along the 3 axis.

TimeBodyGyroscope-Mean()-X   
TimeBodyGyroscope-Mean()-Y   
TimeBodyGyroscope-Mean()-Z   
TimeBodyGyroscope-STD()-X   
TimeBodyGyroscope-STD()-Y   
TimeBodyGyroscope-STD()-Z   

The following measure the mean and standard deviation of angular velocity captured by the gyroscope for jerk/abrupt body motions along the 3 axis.

TimeBodyGyroscopeJerk-Mean()-X   
TimeBodyGyroscopeJerk-Mean()-Y   
TimeBodyGyroscopeJerk-Mean()-Z   
TimeBodyGyroscopeJerk-STD()-X   
TimeBodyGyroscopeJerk-STD()-Y   
TimeBodyGyroscopeJerk-STD()-Z   
   
The following measure the mean and standard deviation of magnitude of the linear velocity captured by accelerometer for body motions.

TimeBodyAccelerometerMagnitude-Mean()   
TimeBodyAccelerometerMagnitude-STD()   

The following measure the mean and standard deviation of magnitude of the linear velocity captured by accelerometer for gravity.

TimeGravityAccelerometerMagnitude-Mean()   
TimeGravityAccelerometerMagnitude-STD()   

The following measure the mean and standard deviation of magnitude of the linear velocity captured by accelerometer for jerk/abrupt motions.

TimeBodyAccelerometerJerkMagnitude-Mean()   
TimeBodyAccelerometerJerkMagnitude-STD()   

The following measure the mean and standard deviation of magnitude of the angular velocity captured by gyroscope for normal and abrupt motions.

TimeBodyGyroscopeMagnitude-Mean()   
TimeBodyGyroscopeMagnitude-STD()   
TimeBodyGyroscopeJerkMagnitude-Mean()   
TimeBodyGyroscopeJerkMagnitude-STD()   

Below are the attributes measured along the Frequency domain

The following measure the mean and standard deviation of linear velocity captured by accelerometer for body motion along the 3 axis.

FrequencyBodyAccelerometer-Mean()-X   
FrequencyBodyAccelerometer-Mean()-Y   
FrequencyBodyAccelerometer-Mean()-Z   
FrequencyBodyAccelerometer-STD()-X      
FrequencyBodyAccelerometer-STD()-Y   
FrequencyBodyAccelerometer-STD()-Z   

The following measure the mean and standard deviation of angular velocity captured by the gyroscope for jerk/abrupt body motions along the 3 axis.


FrequencyBodyAccelerometerJerk-Mean()-X   
FrequencyBodyAccelerometerJerk-Mean()-Y   
FrequencyBodyAccelerometerJerk-Mean()-Z   
FrequencyBodyAccelerometerJerk-STD()-X   
FrequencyBodyAccelerometerJerk-STD()-Y   
FrequencyBodyAccelerometerJerk-STD()-Z   

The following measure the mean and standard deviation of angular velocity captured by gyroscope for body motions along the 3 axis.

FrequencyBodyGyroscope-Mean()-X   
FrequencyBodyGyroscope-Mean()-Y   
FrequencyBodyGyroscope-Mean()-Z   
FrequencyBodyGyroscope-STD()-X   
FrequencyBodyGyroscope-STD()-Y   
FrequencyBodyGyroscope-STD()-Z   

The following measure the mean and standard deviation of magnitude of the linear velocity captured by accelerometer for gravity.

FrequencyBodyAccelerometerMagnitude-Mean()   
FrequencyBodyAccelerometerMagnitude-STD()   

The following measure the mean and standard deviation of magnitude of the linear velocity captured by accelerometer for gravity for jerk/abrupt motions.

FrequencyBodyAccelerometerJerkMagnitude-Mean()
FrequencyBodyAccelerometerJerkMagnitude-STD()   

The following measure the mean and standard deviation of magnitude of the angular velocity captured by gyroscope for normal and abrupt motions.

FrequencyBodyGyroscopeMagnitude-Mean()   
FrequencyBodyGyroscopeMagnitude-STD()   
FrequencyBodyGyroscopeJerkMagnitude-Mean()   
FrequencyBodyGyroscopeJerkMagnitude-STD()   

