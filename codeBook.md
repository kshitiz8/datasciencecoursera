processing on input data
=========================
from the training and test set data, extracted the mean and std measurement for all the variables.
List of these fields is below.
mapped the subject from subject file with the data
joined the activity data with activit_label data to map label id with activity name
mapped the activity name with the data

did a group by on subject and activity using thae aggreagate function to get the mean of other the measurement field

Output Fields
==============
activity:the activity name 
subject: the subject id
fBodyAcc_mean_X: 
fBodyAcc_mean_Y: 
fBodyAcc_mean_Z: 
fBodyAcc_meanFreq_X: 
fBodyAcc_meanFreq_Y: 
fBodyAcc_meanFreq_Z: 
fBodyAcc_std_X: 
fBodyAcc_std_Y: 
fBodyAcc_std_Z: 
fBodyAccJerk_mean_X: 
fBodyAccJerk_mean_Y: 
fBodyAccJerk_mean_Z: 
fBodyAccJerk_meanFreq_X: 
fBodyAccJerk_meanFreq_Y: 
fBodyAccJerk_meanFreq_Z: 
fBodyAccJerk_std_X: 
fBodyAccJerk_std_Y: 
fBodyAccJerk_std_Z: 
fBodyAccMag_mean: 
fBodyAccMag_meanFreq: 
fBodyAccMag_std: 
fBodyBodyAccJerkMag_mean: 
fBodyBodyAccJerkMag_meanFreq: 
fBodyBodyAccJerkMag_std: 
fBodyBodyGyroJerkMag_mean: 
fBodyBodyGyroJerkMag_meanFreq: 
fBodyBodyGyroJerkMag_std: 
fBodyBodyGyroMag_mean: 
fBodyBodyGyroMag_meanFreq: 
fBodyBodyGyroMag_std: 
fBodyGyro_mean_X: 
fBodyGyro_mean_Y: 
fBodyGyro_mean_Z: 
fBodyGyro_meanFreq_X: 
fBodyGyro_meanFreq_Y: 
fBodyGyro_meanFreq_Z: 
fBodyGyro_std_X: 
fBodyGyro_std_Y: 
fBodyGyro_std_Z: 
subject: 
tBodyAcc_mean_Y: 
tBodyAcc_mean_Z: 
tBodyAcc_std_X: 
tBodyAcc_std_Y: 
tBodyAcc_std_Z: 
tBodyAccJerk_mean_X: 
tBodyAccJerk_mean_Y: 
tBodyAccJerk_mean_Z: 
tBodyAccJerk_std_X: 
tBodyAccJerk_std_Y: 
tBodyAccJerk_std_Z: 
tBodyAccJerkMag_mean: 
tBodyAccJerkMag_std: 
tBodyAccMag_mean: 
tBodyAccMag_std: 
tBodyGyro_mean_X: 
tBodyGyro_mean_Y: 
tBodyGyro_mean_Z: 
tBodyGyro_std_X: 
tBodyGyro_std_Y: 
tBodyGyro_std_Z: 
tBodyGyroJerk_mean_X: 
tBodyGyroJerk_mean_Y: 
tBodyGyroJerk_mean_Z: 
tBodyGyroJerk_std_X: 
tBodyGyroJerk_std_Y: 
tBodyGyroJerk_std_Z: 
tBodyGyroJerkMag_mean: 
tBodyGyroJerkMag_std: 
tBodyGyroMag_mean: 
tBodyGyroMag_std: 
tGravityAcc_mean_X: 
tGravityAcc_mean_Y: 
tGravityAcc_mean_Z: 
tGravityAcc_std_X: 
tGravityAcc_std_Y: 
tGravityAcc_std_Z: 
tGravityAccMag_mean: 
tGravityAccMag_std

