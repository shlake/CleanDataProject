
Clean-Data Final Project

Files from the current directory:

          Read in activity_labels.txt
          Read in features.txt
          Read from the train directory:
               X_train.txt
               y_train.txt
               subject_train.txt

          Read from the test directory:
               X_test.txt
               y_test.txt
               subject_test.txt

Subset the Features file, to produce a new file with only the features that are named mean and standard deviation. I did not include the meanFreq variables

subset the files X_train.txt and X_test.txt to include only the columns from the subsetted-feature file (only mean and standard deviation)

add the activity label (from activity_label) file to the y “files” (y_train.txt & y_test.txt), matching the activity label with the code that appears in the “y” files

Add the file subject table as the 1st column and the y activity table to the respective data files (train & test):
    traintable <- cbind(subject_train, y_train, X_train)
    testtable <- cbind(subject_test, y_test, X_test)
     

combine (rbind) the test data and the train data files
     combinedTable <- rbind(TrainTable, TestTable)

add column names to the combined file

Create a new data set with the average of each variable for each activity and each subject. 

