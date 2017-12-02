#
## GettingAndCleaningData -- run_analysis.R
#  Christophe Lauer -- 02/Dec/2017
#

#
## Getting and Cleaning Data Course Projectless 
#
# The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
# The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers 
# on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data 
# set as described below, 2) a link to a Github repository with your script for performing the analysis, 
# and 3) a code book that describes the variables, the data, and any transformations or work that you 
# performed to clean up the data called CodeBook.md. You should also include a README.md in the repo 
# with your scripts. This repo explains how all of the scripts work and how they are connected.
#

# Datafile download and unzip should happen manually. Make sure that the folder named "UCI HAR Dataset"
# is one level below your current working directory, and then you can proceed.

# Modify script here to reflect your default working directory 
path <- "/Users/clu/Desktop/Coursera"
setwd(path)

# load the file containing the whole features names
feature_names <- read.table("UCI HAR Dataset/features.txt")
# List of features that are either STD or MEAN values
filtered_features <- grep("std|mean", feature_names$V2)

# load both train and test values info dataFrames 
train_features <- read.table("UCI HAR Dataset/train/X_train.txt")
test_features <- read.table("UCI HAR Dataset/test/X_test.txt")

## Just out of curiosity - useless here in the assignment 
#
# total_features <- rbind(train_features, test_features)
# total_features <- NULL

# combined_features is the sum of test and train values, but only for STD or MEAN values 
combined_features <- rbind(train_features[,filtered_features], test_features[,filtered_features])

# combined_features column names are far from explicit. This cannot make a tidy data set
# > colnames(combined_features)
# [1] "V1"   "V2"   "V3"   "V4"   "V5"   "V6"   "V41"  "V42"  "V43"  "V44"  "V45"  "V46"  "V81"  "V82"  "V83" 
# [16] "V84"  "V85"  "V86"  "V121" "V122" "V123" "V124" "V125" "V126" "V161" "V162" "V163" "V164" "V165" "V166"
# [31] "V201" "V202" "V214" "V215" "V227" "V228" "V240" "V241" "V253" "V254" "V266" "V267" "V268" "V269" "V270"
# [46] "V271" "V294" "V295" "V296" "V345" "V346" "V347" "V348" "V349" "V350" "V373" "V374" "V375" "V424" "V425"
# [61] "V426" "V427" "V428" "V429" "V452" "V453" "V454" "V503" "V504" "V513" "V516" "V517" "V526" "V529" "V530"
# [76] "V539" "V542" "V543" "V552"

colnames(combined_features) <- feature_names[filtered_features, 2]

# Now we're one step closer to a tidy dataset, as column names are explainatory 
# > colnames(combined_features)
# [1] "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"               "tBodyAcc-mean()-Z"              
# [4] "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"               
# [7] "tGravityAcc-mean()-X"            "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"           
# [10] "tGravityAcc-std()-X"             "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
# [13] "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"           "tBodyAccJerk-mean()-Z"          
# [16] "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"           
# [19] "tBodyGyro-mean()-X"              "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"             
# [22] "tBodyGyro-std()-X"               "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
# [25] "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"          "tBodyGyroJerk-mean()-Z"         
# [28] "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"          
# [31] "tBodyAccMag-mean()"              "tBodyAccMag-std()"               "tGravityAccMag-mean()"          
# [34] "tGravityAccMag-std()"            "tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"          
# [37] "tBodyGyroMag-mean()"             "tBodyGyroMag-std()"              "tBodyGyroJerkMag-mean()"        
# [40] "tBodyGyroJerkMag-std()"          "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
# [43] "fBodyAcc-mean()-Z"               "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"               
# [46] "fBodyAcc-std()-Z"                "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"          
# [49] "fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"          
# [52] "fBodyAccJerk-mean()-Z"           "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"           
# [55] "fBodyAccJerk-std()-Z"            "fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"      
# [58] "fBodyAccJerk-meanFreq()-Z"       "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
# [61] "fBodyGyro-mean()-Z"              "fBodyGyro-std()-X"               "fBodyGyro-std()-Y"              
# [64] "fBodyGyro-std()-Z"               "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"         
# [67] "fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"              "fBodyAccMag-std()"              
# [70] "fBodyAccMag-meanFreq()"          "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"      
# [73] "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-std()"         
# [76] "fBodyBodyGyroMag-meanFreq()"     "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"     
# [79] "fBodyBodyGyroJerkMag-meanFreq()"

# loading both test and train activities from file, combine into single dataFrame with "row bind"
train_activities <- read.table("UCI HAR Dataset/train/y_train.txt")
test_activities <- read.table("UCI HAR Dataset/test/y_test.txt")
combined_activities <- rbind(train_activities, test_activities)

# Read the activity labels file 
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
# As previously learned, labels and litterals should generally by all lowercase
activity_labels$V2 <- tolower(activity_labels$V2)
# Factor the activity based on the activity_labels
combined_activities$activity <- factor(combined_activities$V1, levels = activity_labels$V1, labels = activity_labels$V2)

# loading both test and train subjects from file, combine into single dataFrame with "row bind"
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
combined_subjects <- rbind(train_subjects, test_subjects)

# Combine activities and subject columns into a single dataFrame, using "column bind"
subjects_activities <- cbind(combined_subjects, combined_activities$activity)
colnames(subjects_activities) <- c("subject_id", "activity")

# Now combine activites and features 
df_activity <- cbind(subjects_activities, combined_features)
df_result <- aggregate(df_activity[,3:81], by = list(df_activity$subject_id, df_activity$activity), FUN = mean)

# There are 30 subjects, and 6 activities, we can check that our 
# resulting dataFrame df_result has 180 lines (= 30 * 6)
#
# > str(df_result)
# 'data.frame':	180 obs. of  81 variables:
#   $ Group.1                        : int  1 2 3 4 5 6 7 8 9 10 ...
# $ Group.2                        : Factor w/ 6 levels "walking","walking_upstairs",..: 1 1 1 1 1 1 1 1 1 1 ...
# $ tBodyAcc-mean()-X              : num  0.277 0.276 0.276 0.279 0.278 ...
# $ tBodyAcc-mean()-Y              : num  -0.0174 -0.0186 -0.0172 -0.0148 -0.0173 ...
# $ tBodyAcc-mean()-Z              : num  -0.111 -0.106 -0.113 -0.111 -0.108 ...
# $ tBodyAcc-std()-X               : num  -0.284 -0.424 -0.36 -0.441 -0.294 ...

# Now replace the Group.1 and Group.2 column names by proper names
colnames(df_result)[1:2] <- c("subject_id", "activity")

# Write final tidy dataset to a file on disk
write.table(df_result, file="GettingAndCleaningData/mean_measures.txt", row.names = FALSE)

# Mission: Done! :)

# Generate file with column names for creating the documentation in CodeBook.md
cn <- list(c(1:81), colnames(df_result))
write.table(cn, file="GettingAndCleaningData/data_catalog.txt", row.names = FALSE)

