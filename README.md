# Human Activity Recognition
* Getting and Cleaning Data - Course Project - Human Activity Recognition
* Original Submission - Bert CARLIER - Jan-19, 2016

##Background
*The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
* Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
* Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
* The experiments have been video-recorded to label the data manually. 
* The obtained dataset has been randomly partitioned into two sets: training data and test data

##Purpose
Creating an R script called run_analysis.R that does the following.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Important: Prerequisites to run the script
* You must download the dataset [Human Activity Recognition](https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project), and unzip the downloaded folder.
* You must set your working directory to the location where the unzipped folder is located, using ```setwd()```

##What the R script does
The R script run_analysis.R will carry out the following operations
* Merge the training and test data into one new data set
* Keeping only columns that have a means or a standard deviation pattern in the column name
* Adding the activity names to the data set
* Adding index labels for each of the test subject individuals
* Creating a new tidy dataset containing  
  * an index label for the test individuals
  * an activity label
  * the means over each of the columns retained in step 2
* The result will be returned in a text file HAR_tidy.txt, located in the working directory.

