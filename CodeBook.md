# Code Book for programming assignment "GettingAndCleaningData" course from COURSERA

## 0 - Foreword

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## 1 - Data origin

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## 2 - Data processing

The goal of the exercice is to create an R script named **run_analysis.R** that does process the raw data, according to the following instructions: 

1. Merges the training and the test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

## 3 - Data output

The output of the R script is a tidy dataset saved to a .TXT file in the same GitHub repository, named *mean_measures.txt* 

## 4 - Data catalog

Here below is the catalog of the data available in the final result *mean_measures.txt* data file. Each row contains one single measure for a subject and an activity.

Column 1 "subject_id" is an INT [1:30] identifying which experiment subject was observed for measures

Column 2 is a FACTOR of 6 different activities (in lowercase): walking ; walking_upstairs ; walking_downstairs ; sitting ; standing ; laying

1 "subject_id"  
2 "activity"  
3 "tBodyAcc-mean()-X"  
4 "tBodyAcc-mean()-Y"  
5 "tBodyAcc-mean()-Z"  
6 "tBodyAcc-std()-X"  
7 "tBodyAcc-std()-Y"  
8 "tBodyAcc-std()-Z"  
9 "tGravityAcc-mean()-X"  
10 "tGravityAcc-mean()-Y"  
11 "tGravityAcc-mean()-Z"  
12 "tGravityAcc-std()-X"  
13 "tGravityAcc-std()-Y"  
14 "tGravityAcc-std()-Z"  
15 "tBodyAccJerk-mean()-X"  
16 "tBodyAccJerk-mean()-Y"  
17 "tBodyAccJerk-mean()-Z"  
18 "tBodyAccJerk-std()-X"  
19 "tBodyAccJerk-std()-Y"  
20 "tBodyAccJerk-std()-Z"  
21 "tBodyGyro-mean()-X"  
22 "tBodyGyro-mean()-Y"  
23 "tBodyGyro-mean()-Z"  
24 "tBodyGyro-std()-X"  
25 "tBodyGyro-std()-Y"  
26 "tBodyGyro-std()-Z"  
27 "tBodyGyroJerk-mean()-X"  
28 "tBodyGyroJerk-mean()-Y"  
29 "tBodyGyroJerk-mean()-Z"  
30 "tBodyGyroJerk-std()-X"  
31 "tBodyGyroJerk-std()-Y"  
32 "tBodyGyroJerk-std()-Z"  
33 "tBodyAccMag-mean()"  
34 "tBodyAccMag-std()"  
35 "tGravityAccMag-mean()"  
36 "tGravityAccMag-std()"  
37 "tBodyAccJerkMag-mean()"  
38 "tBodyAccJerkMag-std()"  
39 "tBodyGyroMag-mean()"  
40 "tBodyGyroMag-std()"  
41 "tBodyGyroJerkMag-mean()"  
42 "tBodyGyroJerkMag-std()"  
43 "fBodyAcc-mean()-X"  
44 "fBodyAcc-mean()-Y"  
45 "fBodyAcc-mean()-Z"  
46 "fBodyAcc-std()-X"  
47 "fBodyAcc-std()-Y"  
48 "fBodyAcc-std()-Z"  
49 "fBodyAcc-meanFreq()-X"  
50 "fBodyAcc-meanFreq()-Y"  
51 "fBodyAcc-meanFreq()-Z"  
52 "fBodyAccJerk-mean()-X"  
53 "fBodyAccJerk-mean()-Y"  
54 "fBodyAccJerk-mean()-Z"  
55 "fBodyAccJerk-std()-X"  
56 "fBodyAccJerk-std()-Y"  
57 "fBodyAccJerk-std()-Z"  
58 "fBodyAccJerk-meanFreq()-X"  
59 "fBodyAccJerk-meanFreq()-Y"  
60 "fBodyAccJerk-meanFreq()-Z"  
61 "fBodyGyro-mean()-X"  
62 "fBodyGyro-mean()-Y"  
63 "fBodyGyro-mean()-Z"  
64 "fBodyGyro-std()-X"  
65 "fBodyGyro-std()-Y"  
66 "fBodyGyro-std()-Z"  
67 "fBodyGyro-meanFreq()-X"  
68 "fBodyGyro-meanFreq()-Y"  
69 "fBodyGyro-meanFreq()-Z"  
70 "fBodyAccMag-mean()"  
71 "fBodyAccMag-std()"  
72 "fBodyAccMag-meanFreq()"  
73 "fBodyBodyAccJerkMag-mean()"  
74 "fBodyBodyAccJerkMag-std()"  
75 "fBodyBodyAccJerkMag-meanFreq()"  
76 "fBodyBodyGyroMag-mean()"  
77 "fBodyBodyGyroMag-std()"  
78 "fBodyBodyGyroMag-meanFreq()"  
79 "fBodyBodyGyroJerkMag-mean()"  
80 "fBodyBodyGyroJerkMag-std()"  
81 "fBodyBodyGyroJerkMag-meanFreq()"  


Thank you!

*Christophe Lauer -- 02/Dec/2017* 

