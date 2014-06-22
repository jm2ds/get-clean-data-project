get-clean-data-project
======================

**Instructions:**
----------------

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following. 

        1. Merges the training and the test sets to create one data set.
        2. Extracts only the measurements on the mean and standard deviation for each measurement. 
        3. Uses descriptive activity names to name the activities in the data set
        4. Appropriately labels the data set with descriptive variable names. 
        5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


**The run_analysis.R script**
-----------------------------------------

1. Prior to running the script, the file **"getdata_projectfiles_UCI HAR Dataset.zip"** was unzipped into the working directory. The working directory should now have a folder called **"UCI HAR dataset"** with the following files & folders in it. Additional information on these files can be found in the section above on the **Data Set**. 
 * README.txt
 * features.txt
 * feature_info.txt
 * activity_labels.txt
 * test (folder)
        * X_test.txt
        * y_test.txt
        * subject_test.txt
 * train (folder)
        * X_train.txt
        * y_train.txt
        * subject_train.txt
 
**Load and combine files**

1. Load and combine the rows in the **'subject_train.txt'** and **'subject_test.txt'** files to create the **subject** vector

2. Load and combine the rows in the **'y_train.txt'** and  **'y_test.txt'** files to create the **activity** vector

3. Use the **'activities_labels.txt'** file to map the activity names in the activity vector

4. Load **'features.txt'** file and clean the measurement labels to remove () and -

5. Load **'x_train.txt'** dataset with the clean measurement labels as the column names

6. Load **'x_test.txt'** dataset with the clean measurement labels as the column names
        
7. Combine the **'x_train.txt'** and **'x_test.txt'** datasets and then add **Subject** and **Activity** as the first 2 columns to create a single dataset with 10299 observations and 563 measurements (including subject and activity)


**Create tidy data set with only Mean and STD measurements**

8. Subset the complete dataset to keep only those columns that are mean or std measurements. This results in a dataset containing 10299 observations and 79 measurements (not including subject and activity)

**Create tidy data set with the average by subject and activity for each measurement**

9. Calculate the mean of each measurement, aggregating over activity and subject using the `plyr`-package and `ddply()`

10. Verify that the resulting dataset has 180 records, 30 subjects with 6 activities and 79 measurements

**Write the resulting tidy dataset to a .txt file in the working directory**

11. Write the **'tidy_dataset.txt'** file to the working directory. This file is of a dimension of 180x81  with  `,`-separation,  `.`-decimals, header row and no row.names.


Additional information on the included measurements can be found in the **'CodeBook.md'** file.




