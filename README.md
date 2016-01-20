# Human Activity Recognition
* Getting and Cleaning Data - Course Project - Human Activity Recognition
* Original Submission - Bert CARLIER - Jan-19, 2016

##Background of the data
The data set was built from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually [4].

##Before running the R script...
* You must download the dataset [Human Activity Recognition](https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project), and unzip the downloaded folder.
* You must set your working directory to the location where the unzipped folder is located, using ```setwd()```

##What the R script does
The R script run_analysis.R will carry out the following operations
* Merge the training and test data from a set of 30 test individuals into one new data set
* Keeping only columns that have a means or a standard deviation pattern in the column name
* Adding the activity names to the data set
* Adding index labels for each of the test subject individuals
* Creating a new tidy dataset containing  
  * an index label for the test individuals
  * an activity label
  * a 79-feature vector, holding means and stdev over all columns containing means and stdev data
* The result will be returned in a text file HAR_tidy.txt, located in the working directory. 

The tidy data set contains 10299 observations with 81 variables .


##Background of the data
More background about the design of the experiment can be found on the [Website of ICS] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
