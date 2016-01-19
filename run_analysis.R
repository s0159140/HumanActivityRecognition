#Coursera Data Science Track
#Module 3: Getting and Cleaning Data
#Original Submission by Bert CARLIER - Jan-19 2016

install.packages("plyr")

# Part 1
# Merging the training and the test sets to create one data set.
###############################################################

# storing the training and test data in new variables
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# Aggregating the training and test data for 'x'
x_agg <- rbind(x_train, x_test)

# Aggregating the training and test data for 'y'
y_agg <- rbind(y_train, y_test)

# Aggregating the training and test data for 'subject'
subject_agg <- rbind(subject_train, subject_test)

# Part 2
# Extracting only the measurements on the mean and standard deviation for each measurement
##########################################################################################

# Reading the table features.txt
features <- read.table("features.txt")

# Create a variable mean_and_std that grab only the 'mean' and 'std' of the data
mean_and_std <- grep("-(mean|std)\\(\\)", features[, 2])

# subset the 'mean' and 'std' columns to x_agg
x_agg <- x_agg[, mean_and_std]

# correct the column names
names(x_agg) <- features[mean_and_std, 2]

# Part 3
# Using descriptive activity names to name the activities in the data set
###############################################################################

#Reading the table 'activity_labels.txt'
activities <- read.table("activity_labels.txt")

#Adding the correct activity names to the values in y_agg
y_agg[, 1] <- activities[y_agg[, 1], 2]

# correct column name
names(y_agg) <- "activity"

# Step 4
# Appropriately labelling the data set with descriptive variable names
###############################################################################

# correct column name
names(subject_agg) <- "subject"

# Creating a variable alldata_agg, bind all the data together
alldata_agg <- cbind(x_agg, y_agg, subject_agg)

# Step 5
# Creating a second, independent tidy data set with the average of each variable
# for each activity and each subject
###############################################################################

# Splitting the alldata_agg data frame by subject and activity, then applying the column means
averages_data <- ddply(alldata_agg, .(subject, activity), function(x) colMeans(x[, 1:66]))

# Return a tidy dataset in the text file HAR_tidy.txt
write.table(averages_data, "HAR_tidy.txt", row.name=FALSE)
