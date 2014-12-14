#Getting and Cleaning Data Course Project

The Course project consists of the following points:
- You should create one R script called run_analysis.R that does the following. 
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##Running the script

In order to run the script you have to repeat the following steps:
- Download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
- Download the run_analysis.R script from this repository.
- Extract the files activity_labels.txt, features.txt, subject_test.txt, subject_train.txt, x_train.txt, y_train.txt, X_test.txt, y_test.txt in the same directory you download the script 
- verify that your current working directory is set to the directory that contains the run_analysis.R script
- execute run_analysis.R.

The script produce the tidy.txt file for the data set request.

## Summary of the Steps Performed by the script

###Step1 
load features
###Step2
load activity add column names for activity
###Step 3
load x train add column name for x_train and X_test
###Step 4
filter columns only for mean and std for x_test and x_train
###Step 5 
load y_train and y_test and add column names
###Step 6
load subject_train subject_test and add column names
###Step 7 
create complete  dataframe for test 
###Step 8 
create complete dataframe for train 
###Step 9
combine the test and train dataframe
###Step 10
add activity lables to the complete df dtaframe
###Step11
calculate the values for the column request
###Step 12
write the tidy.txt file

