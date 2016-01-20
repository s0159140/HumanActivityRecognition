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

|<sub>Physical Signal|Units|Time|Frequency|
|---|---|---|---|
|<sub>Body Acceleration|m/s^2 (*)</sub>|TimeDomain.BodyAcceleration.XYZ|FrequencyDomain.BodyAcceleration.XYZ|
|<sub>Gravity Acceleration|m/s^2 (*)|TimeDomain.GravityAcceleration.XYZ	| |
|<sub>Body Acceleration Jerk|m/s^3 (*)|TimeDomain.BodyAccelerationJerk.XYZ	|FrequencyDomain.BodyAccelerationJerk.XYZ	|
|<sub>Body Angular Speed|rad/s|TimeDomain.BodyAngularSpeed.XYZ|FrequencyDomain.BodyAngularSpeed.XYZ|
|<sub>Body Angular Acceleration|rad/s^s|TimeDomain.BodyAngularAcceleration.XYZ	|FrequencyDomain.BodyAngularAcceleration.XYZ	|
|<sub>Body Acceleration Magnitude	|m/s^2 (*)|TimeDomain.BodyAccelerationMagnitude	|FrequencyDomain.BodyAccelerationMagnitude	|
|<sub>Gravity Acceleration Magnitude|m/s^2 (*)|TimeDomain.GravityAccelerationMagnitude	| |
|<sub>Body Acceleration Jerk Magnitude	|m/s^3 (*)|TimeDomain.BodyAccelerationJerkMagnitude|FrequencyDomain.BodyAccelerationJerkMagnitude|
|<sub>Body Angular Speed Magnitude	|rad/s|TimeDomain.BodyAngularSpeedMagnitude	|FrequencyDomain.BodyAngularSpeedMagnitude	|
|<sub>Body Angular Acceleration Magnitude|rad/s^2|TimeDomain.BodyAngularAccelerationMagnitude|FrequencyDomain.BodyAngularAccelerationMagnitude	|

|<sub>Physical Signal</sub>|<sub> Units</sub>|<sub>Time</sub>|<sub>Frequency</sub>|-
|---|---|---|---|
|<sub>Body Acceleration</sub>|<sub>m/s^2 (*)</sub>|<sub>TimeDomain.BodyAcceleration.XYZ</sub>|<sub>FrequencyDomain.BodyAcceleration.XYZ</sub>|
|<sub>Gravity Acceleration</sub>|<sub>m/s^2 (*)</sub>|<sub>TimeDomain.GravityAcceleration.XYZ</sub>| |
|<sub>Body Acceleration Jerk</sub>|<sub>m/s^3 (*)</sub>|<sub>TimeDomain.BodyAccelerationJerk.XYZ	</sub>|<sub>FrequencyDomain.BodyAccelerationJerk.XYZ</sub>|
|<sub>Body Angular Speed</sub>|<sub>rad/s</sub>|<sub>TimeDomain.BodyAngularSpeed.XYZ</sub>|<sub>FrequencyDomain.BodyAngularSpeed.XYZ</sub>|
|<sub>Body Angular Acceleration</sub>|<sub>rad/s^s</sub>|<sub>TimeDomain.BodyAngularAcceleration.XYZ	</sub>|<sub>FrequencyDomain.BodyAngularAcceleration.XYZ	</sub>|
|<sub>Body Acceleration Magnitude	</sub>|<sub>m/s^2 (*)</sub>|<sub>TimeDomain.BodyAccelerationMagnitude	</sub>|<sub>FrequencyDomain.BodyAccelerationMagnitude	</sub>|
|<sub>Gravity Acceleration Magnitude</sub>|<sub>m/s^2 (*)</sub>|<sub>TimeDomain.GravityAccelerationMagnitude</sub>| |
|<sub>Body Acceleration Jerk Magnitude	</sub>|<sub>m/s^3 (*)</sub>|<sub>TimeDomain.BodyAccelerationJerkMagnitude</sub>|<sub>FrequencyDomain.BodyAccelerationJerkMagnitude</sub>|
|<sub>Body Angular Speed Magnitude	</sub>|<sub>rad/s</sub>|<sub>TimeDomain.BodyAngularSpeedMagnitude	</sub>|<sub>FrequencyDomain.BodyAngularSpeedMagnitude	</sub>|
|<sub>Body Angular Acceleration Magnitude</sub>|<sub>rad/s^2</sub>|<sub>TimeDomain.BodyAngularAccelerationMagnitude</sub>|<sub>FrequencyDomain.BodyAngularAccelerationMagnitude	</sub>|

(*) Acceleration and Jerk are measured as gravitational units (g)




