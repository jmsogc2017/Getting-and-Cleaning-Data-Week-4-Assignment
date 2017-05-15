#Codebook for Final Project

Getting and Cleaning Data

jsopko 2017-05-14

##Description of the dataset Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

##Steps to create tidy dataset

Download zip file and extract contents
Read in the labels necessary for the data and subset to only vars pertaining to mean and std
Read in both the training and test data, merging labels with data
Merge the 2 datasets
Melt and cast the dataset, averaging all values
Write out the new dataset to a text file
Variables

Activities

1 WALKING 2 WALKING_UPSTAIRS 3 WALKING_DOWNSTAIRS 4 SITTING 5 STANDING 6 LAYING

Features

"tBodyAccMeanX" "tBodyAccMeanY" "tBodyAccMeanZ" "tBodyAccStdX" "tBodyAccStdY" "tBodyAccStdZ" "tGravityAccMeanX" "tGravityAccMeanY" "tGravityAccMeanZ" "tGravityAccStdX" "tGravityAccStdY" "tGravityAccStdZ" "tBodyAccJerkMeanX" "tBodyAccJerkMeanY" "tBodyAccJerkMeanZ" "tBodyAccJerkStdX" "tBodyAccJerkStdY" "tBodyAccJerkStdZ" "tBodyGyroMeanX" "tBodyGyroMeanY" "tBodyGyroMeanZ" "tBodyGyroStdX" "tBodyGyroStdY" "tBodyGyroStdZ" "tBodyGyroJerkMeanX" "tBodyGyroJerkMeanY" "tBodyGyroJerkMeanZ" "tBodyGyroJerkStdX" "tBodyGyroJerkStdY" "tBodyGyroJerkStdZ" "tBodyAccMagMean" "tBodyAccMagStd" "tGravityAccMagMean" "tGravityAccMagStd" "tBodyAccJerkMagMean" "tBodyAccJerkMagStd" "tBodyGyroMagMean" "tBodyGyroMagStd" "tBodyGyroJerkMagMean" "tBodyGyroJerkMagStd" "fBodyAccMeanX" "fBodyAccMeanY" "fBodyAccMeanZ" "fBodyAccStdX" "fBodyAccStdY" "fBodyAccStdZ" "fBodyAccMeanFreqX" "fBodyAccMeanFreqY" "fBodyAccMeanFreqZ" "fBodyAccJerkMeanX" "fBodyAccJerkMeanY" "fBodyAccJerkMeanZ" "fBodyAccJerkStdX" "fBodyAccJerkStdY" "fBodyAccJerkStdZ" "fBodyAccJerkMeanFreqX" "fBodyAccJerkMeanFreqY" "fBodyAccJerkMeanFreqZ" "fBodyGyroMeanX" "fBodyGyroMeanY" "fBodyGyroMeanZ" "fBodyGyroStdX" "fBodyGyroStdY" "fBodyGyroStdZ" "fBodyGyroMeanFreqX" "fBodyGyroMeanFreqY" "fBodyGyroMeanFreqZ" "fBodyAccMagMean" "fBodyAccMagStd" "fBodyAccMagMeanFreq" "fBodyBodyAccJerkMagMean" "fBodyBodyAccJerkMagStd" "fBodyBodyAccJerkMagMeanFreq" "fBodyBodyGyroMagMean" "fBodyBodyGyroMagStd" "fBodyBodyGyroMagMeanFreq" "fBodyBodyGyroJerkMagMean" "fBodyBodyGyroJerkMagStd" "fBodyBodyGyroJerkMagMeanFreq"
