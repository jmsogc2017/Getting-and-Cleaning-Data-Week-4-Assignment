library(reshape2)

zipname <- 'CleaningData_FinalProject.zip'

## Download and unzip the dataset:
if (!file.exists(zipname)){
  fileURL <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  download.file(fileURL, zipname, method='curl')
}  
if (!file.exists('UCI HAR Dataset')) { unzip(zipname) }

# get the activity name and id
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
# get the dataset vars / column names
features <- read.table("UCI HAR Dataset/features.txt")

# get subset of features(by ID), limited to mean and std
featuresAnalysis <- grep(".*mean.*|.*std.*", features[,2])
# get subset of features(by name)
featuresAnalysisNamed <- features[featuresAnalysis, 2]
# clean up what will be the column names
featuresAnalysisNamed <- gsub('-mean', 'Mean', featuresAnalysisNamed)
featuresAnalysisNamed <- gsub('-std', 'Std', featuresAnalysisNamed)
featuresAnalysisNamed <- gsub('[-()]', '', featuresAnalysisNamed)

# Load training dataset, subsetting to all fields in featuresAnalysis
trainData <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresAnalysis]
trainLabels <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainPeeps <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainPeeps, trainLabels, trainData)

# Load testing dataset, as above
testData <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresAnalysis]
testLabels <- read.table("UCI HAR Dataset/test/Y_test.txt")
testPeeps <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testPeeps, testLabels, testData)

# merge data, adding column names
data <- rbind(train, test)
colnames(data) <- c("Subject", "Activity", featuresAnalysisNamed)

# coerce Activity and Subject cols into factors
data$Subject <- as.factor(data$Subject)
data$Activity <- factor(data$Activity, levels = activities[,1], labels = activities[,2])

# melt the dataset using subject and activity as the id fields, remaining being measure vars
data.melt <- melt(data, id = c("Subject", "Activity"))

# cast the 'molten' dataset using the 'mean' formula, here we're averaging all measures
data.avg <- dcast(data.melt, Subject + Activity ~ variable, mean)

# write out the tidy data to a text file
write.table(data.mean, "tidyData.txt", row.names = F)
