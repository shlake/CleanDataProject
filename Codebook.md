##Human Activity Recognition Using Smartphones Data Set

**Source:**

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy.
activityrecognition '@' smartlab.ws
[www.smartlab.ws](http://www.smartlab.ws)

**Originial Data Set Information:**
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For this project:  

 I created an R script called run_analysis.R that does the following. 


  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

See my [readme file](https://github.com/shlake/CleanDataProject/raw/master/README.md) for progam information. The resulting data file includes the folloiwng variables:

###Variables

|Var Name|Definition|Comments/Units|
|--------|----------|--------------|
|Subject_ID|Identifier of the subject who carried out the experiment|Unique Integer| 
|Activity_Code|6 activities coded with the labels - defined on next row| 1 = Walking, 2=Walking_upstairs, 3=walking_downstairs, 4=Sitting, 5=standing, 6=laying|
|Activity_Label|text labels for the above codes||
|tBodyAccmeanX|body acceleration signal obtained by subtracting the gravity from the total acceleration, mean X axis| standard gravity units “g”|
|tBodyAccmeanY|body acceleration signal obtained by subtracting the gravity from the total acceleration, mean Y axis| standard gravity units “g”|
|tBodyAccmeanZ|body acceleration signal obtained by subtracting the gravity from the total acceleration, mean Z axis| standard gravity units “g”|
|tBodyAccstdX|body acceleration signal obtained by subtracting the gravity from the total acceleration, standard deviation, X axis| standard gravity units “g”|
|tBodyAccstdY|body acceleration signal obtained by subtracting the gravity from the total acceleration, standard deviation, Y axis| standard gravity units “g”|
|tBodyAccstdZ|body acceleration signal obtained by subtracting the gravity from the total acceleration, standard deviation, Z axis| standard gravity units “g”|
tGravityAccmeanX|gravity acceleration signal obtained by subtracting the gravity from the total acceleration, mean, X axis| standard gravity units “g”|
tGravityAccmeanY|gravity acceleration signal obtained by subtracting the gravity from the total acceleration, mean, Y axis| standard gravity units “g”|
tGravityAccmeanZ|gravity acceleration signal obtained by subtracting the gravity from the total acceleration, mean, Z axis| standard gravity units “g”|
tGravityAccstdX|gravity acceleration signal obtained by subtracting the gravity from the total acceleration, standard deviation, X axis| standard gravity units “g”|
tGravityAccstdY|gravity acceleration signal obtained by subtracting the gravity from the total acceleration, standard deviation, Y axis| standard gravity units “g”|
tGravityAccstdZ|gravity acceleration signal obtained by subtracting the gravity from the total acceleration, standard deviation, Z axis| standard gravity units “g”|
tBodyAccJerkmeanX|gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, mean, X axis| standard gravity units “g”|
tBodyAccJerkmeanY|gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, mean, Y axis| standard gravity units “g”|
tBodyAccJerkmeanZ|gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, mean, Z axis| standard gravity units “g”|
tBodyAccJerkstdX|gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, standard deviation, X axis| standard gravity units “g”|
tBodyAccJerkstdY|gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, standard deviation, Y axis| standard gravity units “g”|
tBodyAccJerkstdZ|gravity acceleration w/jerk signal obtained by subtracting the gravity from the total acceleration, standard deviation, Z axis| standard gravity units “g”|
tBodyGyromeanX|angular velocity vector measured by the gyroscope for each window sample, mean, X axis| units: radians/second|
tBodyGyromeanY|angular velocity vector measured by the gyroscope for each window sample, mean, Y axis| units: radians/second|
tBodyGyromeanZ|angular velocity vector measured by the gyroscope for each window sample, mean, Z axis| units: radians/second|
tBodyGyrostdX|angular velocity vector measured by the gyroscope for each window sample, standard deviation, X axis| units: radians/second|
tBodyGyrostdY|angular velocity vector measured by the gyroscope for each window sample, standard deviation, Y axis| units: radians/second|
tBodyGyrostdZ|angular velocity vector measured by the gyroscope for each window sample, standard deviation, Y axis| units: radians/second|
tBodyGyroJerkmeanX|angular velocity vector measured by the gyroscope for each window sample, with jerk, mean, X axis| units: radians/second|
tBodyGyroJerkmeanY|angular velocity vector measured by the gyroscope for each window sample, with jerk, mean, Y axis| units: radians/second|
tBodyGyroJerkmeanZ|angular velocity vector measured by the gyroscope for each window sample, with jerk, mean, Z axis| units: radians/second|
tBodyGyroJerkstdX|angular velocity vector measured by the gyroscope for each window sample, with jerk, standard deviation, X axis| units: radians/second|
tBodyGyroJerkstdY|angular velocity vector measured by the gyroscope for each window sample, with jerk, standard deviation, Y axis| units: radians/second|
tBodyGyroJerkstdZ|angular velocity vector measured by the gyroscope for each window sample, with jerk, standard deviation, Z axis| units: radians/second|

tBodyAccMagmean
tBodyAccMagstd
tGravityAccMagmean
tGravityAccMagstd
tBodyAccJerkMagmean
tBodyAccJerkMagstd
tBodyGyroMagmean
tBodyGyroMagstd

tBodyGyroJerkMagmean
tBodyGyroJerkMagstd
fBodyAccmeanX
fBodyAccmeanY
fBodyAccmeanZ
fBodyAccstdX
fBodyAccstdY
fBodyAccstdZ

fBodyAccJerkmeanX
fBodyAccJerkmeanY
fBodyAccJerkmeanZ
fBodyAccJerkstdX
fBodyAccJerkstdY
fBodyAccJerkstdZ

fBodyGyromeanX
fBodyGyromeanY
fBodyGyromeanZ
fBodyGyrostdX
fBodyGyrostdY
fBodyGyrostdZ

fBodyAccMagmean
fBodyAccMagstd
fBodyBodyAccJerkMagmean
fBodyBodyAccJerkMagstd
fBodyBodyGyroMagmean
fBodyBodyGyroMagstd
fBodyBodyGyroJerkMagmean
fBodyBodyGyroJerkMagstd


**Citation Request:**

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.
