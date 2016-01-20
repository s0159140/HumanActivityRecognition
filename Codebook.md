#Human Activity Recognition - Codebook
* Getting and Cleaning Data - Course Project
* Original Submission by Bert CARLIER - Jan-19, 2016

##Purpose
This Codebook documents all the variables and measures used in the output file "HAR_tidy.txt" of the run_analysis.R script

##Identifiers
*`subject` - gives a numeric index label to each of the tested individuals

*`activity` - documents the activity the invididuals were performing when their training data were taken

##Activity Labels
* **WALKING**  individual was walking during the test
* **WALKING_UPSTAIRS**: individual was walking up a staircase during the test
* **WALKING_DOWNSTAIRS**: individual was walking down a staircase during the test
* **SITTING**: invididual was sitting during the test
* **STANDING**: individual was standing during the test
* **LAYING**: invididual was laying down during the test

##Experiment design - measures of output data
* The activity of 30 test inviduals is being measured using an accelerometer (to track movement) and a gyroscope (to track rotation).
* First
* Each of the parameters in the output data set has below structure
```
(1) t or f + (2) phsyical measure + (3) mean/Std + (4) X, Y or Z
```
Whereby
(1) t or f refers whether the signal was recorded in the time (t) or frequency (f) domain
(2) is the physical signal being measured
(3) specifies the summary measure: a mean or standard deviation
(4) expresses the axis along/around which the movement/rotation is taking place

The below table summarizes which physical signals are (1) or are not (0) being measured in the time and frequency domain

Table 1: Movement and rotation signals measured by the devices on the body (accelerometer and gyroscope)
|Signal|Physical measure|Units|Time|Frequency|
|---|---|---|---|---|---|
|Body Acc|Acceleration (along X,Y and Z axis)|m/s^2 (*)|1|1|
|Body Acc Jerk|Jerk of Acceleration (along X,Y and Z axis)|m/s^2 (*)|1|1|
|Body Angular Speed|Angular Speed (along X,Y and Z axis)|rad/s|1|1|
|Body Angular Acc|Angular Acceleration (along X,Y and Z axis)|rad/s^s|1|0|

Table 2: We measure the impact of gravity seperate (to calculate the net movement of the body)
|Signal|Physical measure|Units|Time|Frequency|
|---|---|---|---|---|---|
|Gravity Acc|Acceleration (along X,Y and Z axis)|m/s^2 (*)|1|0|
|Gravity Acc Mag|Magnitude of Acceleration|m/s^2 (*)|1|0|

Table 3: Finally, we get a the magnitude of the signals by summing up vectors along X, Y and Z-axis
|Signal|Physical measure|Units|Time|Frequency|
|---|---|---|---|---|---|
|Body Acc Magnitude|Magnitude of Acceleration|m/s^2 (*)|1|1|
|Body Acc Jerk Mag|Magnitude of Jerk|m/s^2 (*)|1|1|
|Body Angular Speed Mag|Magnitude of Angular Speed|rad/s|1|1|
|Body Angular Acc Mag|Magnitude of Angular Acceleration|rad/s^2|1|1|

An example of a parameter in the output data is **fBodyAccJerk-mean()-Z**, which tells us that the data are recorded in the frequency domain and the data represent the means of the "Jerk (of the acceleration)" along Z axis

##Measures




