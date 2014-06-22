

## project code snipits
#read files
trainXTable <- read.table("train/X_train.txt")
trainYTable <- read.table("train/y_train.txt")
subjectTrainTable <- read.table("train/subject_train.txt")
testXTable <- read.table("test/X_test.txt")
testYTable <- read.table("test/y_test.txt")
subjectTestTable <- read.table("test/subject_test.txt")

actTable <- read.table("activity_labels.txt")
features <- read.table("features.txt")

## getting just mean & std from features.txt file
keepFeaturesM <- features[grep("mean\\(", features$V2),]
keepFeaturesS <- features[grep("std\\(", features$V2),]
keepFeatures <- rbind(keepFeaturesM, keepFeaturesS)
keepFeatures <- keepFeatures[with(keepFeatures, order(V1)),]

## only keep the columns from keepFeatures

subTest <- c()
subTrain <- c()
for (i in 1:length(keepFeatures$V1))
    {  subTest <- cbind(subTest, testXTable[,keepFeatures$V1[i]])
       subTrain <- cbind(subTrain, trainXTable[,keepFeatures$V1[i]])}
subTrainTable <- data.frame(subTrain)
subTestTable <- data.frame(subTest)

## add activity labels to the codes in the Ytables
## merge activity codes wi/ value label
actTable$V2 <- as.character(actTable$V2)

trainYTable$V2 <- actTable[trainYTable$V1, 2]
testYTable$V2 <- actTable[testYTable$V1, 2]

## combine subject, yTable & xTable for each train and test
TrainTable <- cbind(subjectTrainTable, trainYTable, subTrainTable)
TestTable <- cbind(subjectTestTable, testYTable, subTestTable)

## combine the test and train into a tidy file
comboTable <- rbind(TrainTable, TestTable)

##Need to change the names of colunms to get rid of "()"
keepFeatures$V2 <- as.character(keepFeatures$V2)
keepFeatures$V2 <- gsub("\\(\\)","", keepFeatures$V2)
keepFeatures$V2 <- gsub("-","", keepFeatures$V2)

## Give columns "real" names
colnames(comboTable) <- c("Subject_ID", "Activity_Code", "Activity_Label", keepFeatures$V2)

##Creates a second, independent tidy data set 
##with the average of each variable for each activity and each subject. 
