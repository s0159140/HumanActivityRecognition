# Human Activity Recognition
* Getting and Cleaning Data - Course Project - Human Activity Recognition
* Original Submission - Bert CARLIER - Jan-19, 2016

##Important: Prerequisites to run the script
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
  * the means over each of the columns retained in step 2
* The result will be returned in a text file HAR_tidy.txt, located in the working directory.

##Background of the data
More background about the design of the experiment can be found on the [Website of ICS] http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
