Codebook
========================================================

**Data Set Information:**
--------------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Check the README.txt file included in the dataset to see how the information from this experiment was used.


**Study Information**
---------------------

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

**Data Set**
-------------

The dataset was downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The dataset includes the following files:

* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
* 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

**Transformations made to the Data Set**
-----------------------------------------------

1. The Training and Test Data sets were merged to create a single dataset.
2. The combined dataset has been cleaned to include only the mean and std variables from the original data sets with the variable labels from the **'features.txt'** file. The variable labels were cleaned to remove **()** and **-**.
3. The activity labels and subjects were added to the combined dataset creating a dataset with 10299 observations, 30 subjects, 6 activities and 79 variables
4. A new tidy data set was created that averaged each variable by activity and subject. The resulting data set has 180 observations that have been averaged for 30 subjects and 6 activities across 79 variables.

Additional information on the transformations made to the Data Sets can be found in the **'README.md'** file.

**Resulting File and Variables**
------------------------

The following variables are in the final **tidy_dataset.txt**. The variable names were modified from the names in the **'features.txt'** file using **gsub()** to remove **()** and **-**.

Variable  | Description
--------- | ------------
Subject  | The ID of the subject (1-30)
Activity  | The activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
tBodyAcc_mean_X  | Mean time for acceleration of body for X direction
tBodyAcc_mean_Y  | Mean time for acceleration of body for Y direction
tBodyAcc_mean_Z  | Mean time for acceleration of body for Z direction
tGravityAcc_mean_X  | Mean time of acceleration of gravity for X direction
tGravityAcc_mean_Y  | Mean time of acceleration of gravity for Y direction
tGravityAcc_mean_Z  | Mean time of acceleration of gravity for Z direction
tBodyAccJerk_mean_X  | Mean time of body acceleration jerk for X direction
tBodyAccJerk_mean_Y  | Mean time of body acceleration jerk for Y direction
tBodyAccJerk_mean_Z  | Mean time of body acceleration jerk for Z direction
tBodyGyro_mean_X  | Mean body gyroscope measurement for X direction
tBodyGyro_mean_Y  | Mean body gyroscope measurement for Y direction
tBodyGyro_mean_Z  | Mean body gyroscope measurement for Z direction
tBodyGyroJerk_mean_X  | Mean jerk signal of body for X direction
tBodyGyroJerk_mean_Y  | Mean jerk signal of body for Y direction
tBodyGyroJerk_mean_Z  | Mean jerk signal of body for Z direction
tBodyAccMag_mean  | Mean magnitude of body acceleration
tGravityAccMag_mean  | Mean gravity acceleration magnitude
tBodyAccJerkMag_mean  | Mean magnitude of body acceleration jerk
tBodyGyroMag_mean  | Mean magnitude of body gyroscope measurement
tBodyGyroJerkMag_mean  | Mean magnitude of body body gyroscope jerk measurement
fBodyAcc_mean_X  | Mean of frequency of body acceleration for X direction
fBodyAcc_mean_Y  | Mean of frequency of body acceleration for Y direction
fBodyAcc_mean_Z  | Mean of frequency of body acceleration for Z direction
fBodyAcc_meanFreq_X  | Mean frequency of body acceleration for direction X
fBodyAcc_meanFreq_Y  | Mean frequency of body acceleration for direction Y
fBodyAcc_meanFreq_Z  | Mean frequency of body acceleration for direction Z
fBodyAccJerk_mean_X  | Mean of frequency of body acceleration jerk for X direction
fBodyAccJerk_mean_Y  | Mean of frequency of body acceleration jerk for Y direction
fBodyAccJerk_mean_Z  | Mean of frequency of body acceleration jerk for Z direction
fBodyAccJerk_meanFreq_X  | Mean frequency of body acceleration jerk for direction X
fBodyAccJerk_meanFreq_Y  | Mean frequency of body acceleration jerk for direction Y
fBodyAccJerk_meanFreq_Z  | Mean frequency of body acceleration jerk for direction Z
fBodyGyro_mean_X  | Mean of frequency of body gyroscope measurement for X direction
fBodyGyro_mean_Y  | Mean of frequency of body gyroscope measurement for Y direction
fBodyGyro_mean_Z  | Mean of frequency of body gyroscope measurement for Z direction
fBodyGyro_meanFreq_X  | Mean frequency of body gyroscope measurement for X direction
fBodyGyro_meanFreq_Y  | Mean frequency of body gyroscope measurement for Y direction
fBodyGyro_meanFreq_Z  | Mean frequency of body gyroscope measurement for Z direction
fBodyAccMag_mean  | Mean of frequency of body acceleration magnitude
fBodyAccMag_meanFreq  | Mean frequency of body acceleration magnitude
fBodyBodyAccJerkMag_mean  | Mean of frequency of all body acceleration jerk magnitude
fBodyBodyAccJerkMag_meanFreq  | Mean frequency of magnitude of all body acceleration jerk measurements
fBodyBodyGyroMag_mean  | Mean of frequency of magnitude of all body gyroscope measurement
fBodyBodyGyroMag_meanFreq  | Mean frequency of magnitude of all body gyroscope measurements
fBodyBodyGyroJerkMag_mean  | Mean of frequency of magnitude of all body gyroscope jerk measurements
fBodyBodyGyroJerkMag_meanFreq  | Mean frequency of magnitude of all body gyroscope jerk measurements
tBodyAcc_std_X  | Standard deviation of time for acceleration of body for X direction
tBodyAcc_std_Y  | Standard deviation of time for acceleration of body for Y direction
tBodyAcc_std_Z  | Standard deviation of time for acceleration of body for Z direction
tGravityAcc_std_X  | Standard deviation of time of acceleration of gravity for X direction
tGravityAcc_std_Y  | Standard deviation of time of acceleration of gravity for Y direction
tGravityAcc_std_Z  | Standard deviation of time of acceleration of gravity for Z direction
tBodyAccJerk_std_X  | Standard deviation of time of body acceleration jerk for X direction
tBodyAccJerk_std_Y  | Standard deviation of time of body acceleration jerk for Y direction
tBodyAccJerk_std_Z  | Standard deviation of time of body acceleration jerk for Z direction
tBodyGyro_std_X  | Standard deviation of body gyroscope measurement for X direction
tBodyGyro_std_Y  | Standard deviation of body gyroscope measurement for Y direction
tBodyGyro_std_Z  | Standard deviation of body gyroscope measurement for Z direction
tBodyGyroJerk_std_X  | Standard deviation of jerk signal of body for X direction
tBodyGyroJerk_std_Y  | Standard deviation of jerk signal of body for Y direction
tBodyGyroJerk_std_Z  | Standard deviation of jerk signal of body for Z direction
tBodyAccMag_std  | Standard deviation of magnitude of body acceleration
tGravityAccMag_std  | Standard deviation of gravity acceleration magnitude
tBodyAccJerkMag_std  | Standard deviation of magnitude of body acceleration jerk
tBodyGyroMag_std  | Standard deviation of magnitude of body gyroscope measurement
tBodyGyroJerkMag_std  | Standard deviation of magnitude of body body gyroscope jerk measurement
fBodyAcc_std_X  | Standard deviation of frequency of body acceleration for X direction
fBodyAcc_std_Y  | Standard deviation of frequency of body acceleration for Y direction
fBodyAcc_std_Z  | Standard deviation of frequency of body acceleration for Z direction
fBodyAccJerk_std_X  | Standard deviation frequency of body acceleration jerk for X direction
fBodyAccJerk_std_Y  | Standard deviation frequency of body acceleration jerk for Y direction
fBodyAccJerk_std_Z  | Standard deviation frequency of body acceleration jerk for Z direction
fBodyGyro_std_X  | Standard deviation frequency of body gyroscope measurement for X direction
fBodyGyro_std_Y  | Standard deviation frequency of body gyroscope measurement for Y direction
fBodyGyro_std_Z  | Standard deviation frequency of body gyroscope measurement for Z direction
fBodyAccMag_std  | Standard deviation of frequency of body acceleration magnitude
fBodyBodyAccJerkMag_std  | Standard deviation of frequency of all body acceleration jerk magnitude
fBodyBodyGyroMag_std  | Standard deviation of frequency of magnitude of all body gyroscope measurements
fBodyBodyGyroJerkMag_std  | Standard deviation of frequency of magnitude of all body gyroscope jerk measurement






