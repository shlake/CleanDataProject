
# Clean-Data Final Project

This Repository contains:

* README.md - this file
* Codebook.md - for the datafile tidyTable.txt
* tidyTable.txt - tab-delimited file tidy'd up using the R-script run_analysis.R
* groupTidyTable.txt - tab-delimited file w/ the average of each variable for each activity and each subject
* run_analysis.R - R script that created the tidy tables and explained below:

## run_analysis.R does the following:

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

* Subset the Features file, to produce a new file with only the features that are named mean and standard deviation. I did not include the meanFreq variables

* Subset the files X_train.txt and X_test.txt to include only the columns from the subsetted-feature file (only mean and standard deviation)

* Add the activity label (from activity_label) file to the y “files” (y_train.txt & y_test.txt), matching the activity label with the code that appears in the “y” files

* Add the file subject table as the 1st column and the y activity table to the respective data files (train & test):
    traintable <- cbind(subject_train, y_train, X_train)
    testtable <- cbind(subject_test, y_test, X_test)
     

* Combine (rbind) the test data and the train data files
     combinedTable <- rbind(TrainTable, TestTable)

* Add column names to the combined file

* Create a new data set with the average of each variable for each activity and each subject. 

