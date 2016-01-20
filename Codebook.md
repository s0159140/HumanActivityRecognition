#Human Activity Recognition - Codebook
* Getting and Cleaning Data - Course Project
* Original Submission by Bert CARLIER - Jan-19, 2016

A detailed background description about this experiment can be found at [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

##Background of the experiment
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

##Objective of the run_analysis.R script
Return an aggregated, structure cleaned dataset "HAR_tidy.txt" containing
* an identifier `subject` of the individual carrying out the test(numeric): an index between 1-30
* an activty label `activity` - indicating which form of movement the indiduals were performing during the experiment
  * **WALKING**  individual was walking during the test
  * **WALKING_UPSTAIRS**: individual was walking up a staircase during the test
  * **WALKING_DOWNSTAIRS**: individual was walking down a staircase during the test
  * **SITTING**: invididual was sitting during the test
  * **STANDING**: individual was standing during the test
  * **LAYING**: invididual was laying down during the test
* a 79-feature vector with time and frequency domain signal variables (numeric)

The following table connects the 17 signals measured in the time and frequency domain to their variable names in the dataset

Whereby

1. t or f refers whether the signal was recorded in the time (t) or frequency (f) domain
2. is the physical signal being measured
3. specifies the summary measure: a mean or standard deviation
4. expresses the axis along/around which the movement/rotation is taking place

The below 3 tables summarize all physical signals and calculations (i.e. the second part in the structure).
The last 2 columns indicate whether they are (1) or are not (0) being measured in the time and frequency domain

#### First, we capture the movement and rotation signals measured by the devices on the body
|Physical Signal|Units|Time|Frequency|
|---|---|---|---|
|Body Acceleration|m/s^2 (*)|TimeDomain.BodyAcceleration.XYZ|FrequencyDomain.BodyAcceleration.XYZ|
|Body Acceleration Jerk|m/s^3 (*)|TimeDomain.BodyAccelerationJerk.XYZ	|FrequencyDomain.BodyAccelerationJerk.XYZ	|
|Body Angular Speed|rad/s|TimeDomain.BodyAngularSpeed.XYZ|FrequencyDomain.BodyAngularSpeed.XYZ|
|Body Angular Acceleration|rad/s^s|TimeDomain.BodyAngularAcceleration.XYZ	|FrequencyDomain.BodyAngularAcceleration.XYZ	|
|---|---|---|---|
|Gravity Acceleration|m/s^2 (*)|TimeDomain.GravityAcceleration.XYZ	| |
|---|---|---|---|
|Body Acceleration Magnitude	|m/s^2 (*)|TimeDomain.BodyAccelerationMagnitude	|FrequencyDomain.BodyAccelerationMagnitude	|
|Body Acceleration Jerk Magnitude	|m/s^3 (*)|TimeDomain.BodyAccelerationJerkMagnitude|FrequencyDomain.BodyAccelerationJerkMagnitude|
|Body Angular Speed Magnitude	|rad/s|TimeDomain.BodyAngularSpeedMagnitude	|FrequencyDomain.BodyAngularSpeedMagnitude	|
|Body Angular Acceleration Magnitude|rad/s^2|TimeDomain.BodyAngularAccelerationMagnitude|FrequencyDomain.BodyAngularAccelerationMagnitude	|
|---|---|---|---|
|Gravity Acceleration Magnitude|m/s^2 (*)|TimeDomain.GravityAccelerationMagnitude	| |
|---|---|---|---|

An example of a parameter in the output data is **fBodyAccJerk-mean()-Z**, which tells us that the data are recorded in the frequency domain and the data represent the means of the "Jerk (of the acceleration)", measured on the body along Z axis.



(*) Acceleration and Jerk are measured as gravitational units (g)




