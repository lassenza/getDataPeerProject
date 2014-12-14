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
- run run_analysis.R.

The script produce the tidy.txt file for the data set request.

## Summary of the Steps Performed by the script

###Step1 
create a data set for features
###Step2
create a data set for  activities and  add column names for activity
###Step 3
create 2 data sets one  for  x_train  and the second for and X_test and add column names to the two objects
###Step 4
filter columns only for mean and std for x_test and x_train
###Step 5 
create 2 data sets y_train and y_test and add column names
###Step 6
create 2 data sets subject_train subject_test and add column names
###Step 7 
create complete  dataframe for test cbind(subject_test,y_test,x_test)
###Step 8 
create complete dataframe for train  cbind(subject_train,y_train,x_train)
###Step 9
combine the test and train dataframe
###Step 10
add activity lables to the complete data frame defined in the previous step
###Step11
calculate the values for the columns request 
###Step 12
write the tidy.txt file

