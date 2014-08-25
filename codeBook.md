Processing on input data
=========================
- read the input with sep = " ". (There are few instance of multiple spaces and space character in the beginning in each row which need to trimmed to get 561 measurement fields.)
- extract just the mean and std measurement fields of all varaibles
- cbind the subject field
- cbind the activity field.(activity name is obtained from activity label id by joining the two data files)
- do the above steps for train data and test data and rbind both the datasets
- do a group by on subject and activity using thae aggreagate function to get the mean of other the measurement field
- **output file is space delimited file with first row as header**


Output Fields
==============
- **activity**: The activity name performed by the subject. Possible values are 
  * WALKING
  * WALKING_UPSTAIRS
  * WALKING_DOWNSTAIRS 
  * SITTING 
  * STANDING 
  * LAYING
- **subject**: The id of the subject performing the activity for measurement. Possible value are 1-30
- The first set of features selected originate from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Following are the average of the mean and std deviation measurements of tBodyAcc-XYZ, tGravityAcc-XYZ and tBodyGyro-XYZ for each subject and activity:
  * **tBodyAcc_mean_Y**: 
  * **tBodyAcc_mean_Z**: 
  * **tBodyAcc_std_X**: 
  * **tBodyAcc_std_Y**: 
  * **tBodyAcc_std_Z**: 
  * **tGravityAcc_mean_X**: 
  * **tGravityAcc_mean_Y**: 
  * **tGravityAcc_mean_Z**: 
  * **tGravityAcc_std_X**: 
  * **tGravityAcc_std_Y**: 
  * **tGravityAcc_std_Z**: 
  * **tBodyGyro_mean_X**: 
  * **tBodyGyro_mean_Y**: 
  * **tBodyGyro_mean_Z**: 
  * **tBodyGyro_std_X**: 
  * **tBodyGyro_std_Y**: 
  * **tBodyGyro_std_Z**:
- Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Following are the average of the mean and std deviation these measurements for each subject and activity:
  * **tBodyAccJerk_mean_X**: 
  * **tBodyAccJerk_mean_Y**: 
  * **tBodyAccJerk_mean_Z**: 
  * **tBodyAccJerk_std_X**: 
  * **tBodyAccJerk_std_Y**: 
  * **tBodyAccJerk_std_Z**: 
  * **tBodyGyroJerk_mean_X**: 
  * **tBodyGyroJerk_mean_Y**: 
  * **tBodyGyroJerk_mean_Z**: 
  * **tBodyGyroJerk_std_X**: 
  * **tBodyGyroJerk_std_Y**: 
  * **tBodyGyroJerk_std_Z**:
- Also the magnitude of the three-dimensional signals above were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).Following are the average of the mean and std deviation these measurements for each subject and activity:
  * **tBodyAccMag_mean**: 
  * **tBodyAccMag_std**: 
  * **tGravityAccMag_mean**: 
  * **tGravityAccMag_std**: 
  * **tBodyAccJerkMag_mean**: 
  * **tBodyAccJerkMag_std**: 
  * **tBodyGyroMag_mean**: 
  * **tBodyGyroMag_std**: 
  * **tBodyGyroJerkMag_mean**: 
  * **tBodyGyroJerkMag_std**: 
- Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
  * **fBodyAcc_mean_X**: 
  * **fBodyAcc_mean_Y**: 
  * **fBodyAcc_mean_Z**: 
  * **fBodyAcc_std_X**: 
  * **fBodyAcc_std_Y**: 
  * **fBodyAcc_std_Z**: 
  * **fBodyAcc_meanFreq_X**: 
  * **fBodyAcc_meanFreq_Y**: 
  * **fBodyAcc_meanFreq_Z**: 
  * **fBodyAccJerk_mean_X**: 
  * **fBodyAccJerk_mean_Y**: 
  * **fBodyAccJerk_mean_Z**: 
  * **fBodyAccJerk_std_X**: 
  * **fBodyAccJerk_std_Y**: 
  * **fBodyAccJerk_std_Z**: 
  * **fBodyAccJerk_meanFreq_X**: 
  * **fBodyAccJerk_meanFreq_Y**: 
  * **fBodyAccJerk_meanFreq_Z**: 
  * **fBodyGyro_mean_X**: 
  * **fBodyGyro_mean_Y**: 
  * **fBodyGyro_mean_Z**: 
  * **fBodyGyro_std_X**: 
  * **fBodyGyro_std_Y**: 
  * **fBodyGyro_std_Z**: 
  * **fBodyGyro_meanFreq_X**: 
  * **fBodyGyro_meanFreq_Y**: 
  * **fBodyGyro_meanFreq_Z**: 
  * **fBodyAccMag_mean**: 
  * **fBodyAccMag_std**: 
  * **fBodyAccMag_meanFreq**: 
  * **fBodyBodyAccJerkMag_mean**: 
  * **fBodyBodyAccJerkMag_std**: 
  * **fBodyBodyAccJerkMag_meanFreq**: 
  * **fBodyBodyGyroMag_mean**: 
  * **fBodyBodyGyroMag_std**: 
  * **fBodyBodyGyroMag_meanFreq**: 
  * **fBodyBodyGyroJerkMag_mean**: 
  * **fBodyBodyGyroJerkMag_std**: 
  * **fBodyBodyGyroJerkMag_meanFreq**: 
