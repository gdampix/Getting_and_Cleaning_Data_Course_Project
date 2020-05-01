
# Getting and Cleaning Data Course Project
### performed on: [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)   

---
contents : [Puropse](#purpose), [About Data](#about), [Analysis](#analysis)


### Purpose <a name="purpose"></a>
> The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.


### About source data<a name="about"></a>

> Features for this dataset come from the ***accelerometer*** and ***gyroscope*** 3-axial  signals ***-X -Y -Z*** in *X*,*Y* and *Z* directions. These were measured in two domains, ***Time Domain*** and ***Frequency Domain***.   
> Details are present in `README.txt` in souce data.   
> [Download Link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)   


### Analysis<a name="analysis"></a>

`run_analysis.R` does the following.

  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names.
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.