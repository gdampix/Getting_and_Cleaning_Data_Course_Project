# CodeBook

---

This codebook is a reference guide for `tidy_data.txt` in root of this repository. And has all the information regarding variables/features in it.

---

### source

Data for this analysis came from [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and can be downloaded directly using this  [Link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

---

### Identifiers and Lables

- ` Subject ` is the id for subject who wore the device
  - *30* subjects so `id` range from `1` to `30` 
- ` Activity ` is the lable for action subjects were doing and is the outcome for data gathered
  - `LAYING`
  - `SITTING`
  - `WALKING`
  - `STANDING`
  - `WALKING_UPSTAIRS`
  - `WALKING_DOWNSTAIRS`

### Features/Variables 

Source data contains *561 +2* out of which *79 +2* were selected which were related to `Mean` and `Standered Deviation` of measurements.   
Note: `Standered Deviation` was abriviated as `std` in source data.

Features are named in a fashion that it self explains the purpose of varibale for example `FrequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation` is a variable for *"frequency-domain body-accelerometer jerk-magnitude standard-deviation"*


features can be divided into two catagories   

  - ***Time Domain***   
    features in this catagory characterized by `TimeDomain` as first part of their names in `tidy_data.txt` and by `t` in source data
  - ***Frequency Domain***   
    features in this catagory characterized by `FrequencyDomain` as first part of their names in `tidy_data.txt` and by `f` in source data


following abbreviation were used in source data and were expanded to their orignal state   

  - `Acc` for *accelerometer* now in `tidy_data.txt`as `Accelerometer`
  - `Gyro` for *gyroscope* now in `tidy_data.txt`as `Gyroscope`
  - `Freq` for *frequency* now in `tidy_data.txt`as `Frequency`
  - `Mag` for *magnitude* now in `tidy_data.txt`as `Magnitude`
  - `std` for *standard deviation* now in `tidy_data.txt`as `StandardDeviation`


### Data-Types and Units

  - ***Data-Type*** for all variables is `numaric` except for `Activity` variable in which case it is `character` string
  - ***Units*** for all variables are as it is. ie **not** converted from source data units.


### List of all features is as below <a name='list'></a>


  - ` Subject `
  - ` Activity `
  - ` TimeDomainBodyAccelerometerMeanX `
  - ` TimeDomainBodyAccelerometerMeanY `
  - ` TimeDomainBodyAccelerometerMeanZ `
  - ` TimeDomainBodyAccelerometerStandardDeviationX `
  - ` TimeDomainBodyAccelerometerStandardDeviationY `
  - ` TimeDomainBodyAccelerometerStandardDeviationZ `
  - ` TimeDomainGravityAccelerometerMeanX `
  - ` TimeDomainGravityAccelerometerMeanY `
  - ` TimeDomainGravityAccelerometerMeanZ `
  - ` TimeDomainGravityAccelerometerStandardDeviationX `
  - ` TimeDomainGravityAccelerometerStandardDeviationY `
  - ` TimeDomainGravityAccelerometerStandardDeviationZ `
  - ` TimeDomainBodyAccelerometerJerkMeanX `
  - ` TimeDomainBodyAccelerometerJerkMeanY `
  - ` TimeDomainBodyAccelerometerJerkMeanZ `
  - ` TimeDomainBodyAccelerometerJerkStandardDeviationX `
  - ` TimeDomainBodyAccelerometerJerkStandardDeviationY `
  - ` TimeDomainBodyAccelerometerJerkStandardDeviationZ `
  - ` TimeDomainBodyGyroscopeMeanX `
  - ` TimeDomainBodyGyroscopeMeanY `
  - ` TimeDomainBodyGyroscopeMeanZ `
  - ` TimeDomainBodyGyroscopeStandardDeviationX `
  - ` TimeDomainBodyGyroscopeStandardDeviationY `
  - ` TimeDomainBodyGyroscopeStandardDeviationZ `
  - ` TimeDomainBodyGyroscopeJerkMeanX `
  - ` TimeDomainBodyGyroscopeJerkMeanY `
  - ` TimeDomainBodyGyroscopeJerkMeanZ `
  - ` TimeDomainBodyGyroscopeJerkStandardDeviationX `
  - ` TimeDomainBodyGyroscopeJerkStandardDeviationY `
  - ` TimeDomainBodyGyroscopeJerkStandardDeviationZ `
  - ` TimeDomainBodyAccelerometerMagnitudeMean `
  - ` TimeDomainBodyAccelerometerMagnitudeStandardDeviation `
  - ` TimeDomainGravityAccelerometerMagnitudeMean `
  - ` TimeDomainGravityAccelerometerMagnitudeStandardDeviation `
  - ` TimeDomainBodyAccelerometerJerkMagnitudeMean `
  - ` TimeDomainBodyAccelerometerJerkMagnitudeStandardDeviation `
  - ` TimeDomainBodyGyroscopeMagnitudeMean `
  - ` TimeDomainBodyGyroscopeMagnitudeStandardDeviation `
  - ` TimeDomainBodyGyroscopeJerkMagnitudeMean `
  - ` TimeDomainBodyGyroscopeJerkMagnitudeStandardDeviation `
  - ` FrequencyDomainBodyAccelerometerMeanX `
  - ` FrequencyDomainBodyAccelerometerMeanY `
  - ` FrequencyDomainBodyAccelerometerMeanZ `
  - ` FrequencyDomainBodyAccelerometerStandardDeviationX `
  - ` FrequencyDomainBodyAccelerometerStandardDeviationY `
  - ` FrequencyDomainBodyAccelerometerStandardDeviationZ `
  - ` FrequencyDomainBodyAccelerometerMeanFrequencyX `
  - ` FrequencyDomainBodyAccelerometerMeanFrequencyY `
  - ` FrequencyDomainBodyAccelerometerMeanFrequencyZ `
  - ` FrequencyDomainBodyAccelerometerJerkMeanX `
  - ` FrequencyDomainBodyAccelerometerJerkMeanY `
  - ` FrequencyDomainBodyAccelerometerJerkMeanZ `
  - ` FrequencyDomainBodyAccelerometerJerkStandardDeviationX `
  - ` FrequencyDomainBodyAccelerometerJerkStandardDeviationY `
  - ` FrequencyDomainBodyAccelerometerJerkStandardDeviationZ `
  - ` FrequencyDomainBodyAccelerometerJerkMeanFrequencyX `
  - ` FrequencyDomainBodyAccelerometerJerkMeanFrequencyY `
  - ` FrequencyDomainBodyAccelerometerJerkMeanFrequencyZ `
  - ` FrequencyDomainBodyGyroscopeMeanX `
  - ` FrequencyDomainBodyGyroscopeMeanY `
  - ` FrequencyDomainBodyGyroscopeMeanZ `
  - ` FrequencyDomainBodyGyroscopeStandardDeviationX `
  - ` FrequencyDomainBodyGyroscopeStandardDeviationY `
  - ` FrequencyDomainBodyGyroscopeStandardDeviationZ `
  - ` FrequencyDomainBodyGyroscopeMeanFrequencyX `
  - ` FrequencyDomainBodyGyroscopeMeanFrequencyY `
  - ` FrequencyDomainBodyGyroscopeMeanFrequencyZ `
  - ` FrequencyDomainBodyAccelerometerMagnitudeMean `
  - ` FrequencyDomainBodyAccelerometerMagnitudeStandardDeviation `
  - ` FrequencyDomainBodyAccelerometerMagnitudeMeanFrequency `
  - ` FrequencyDomainBodyAccelerometerJerkMagnitudeMean `
  - ` FrequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation `
  - ` FrequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency `
  - ` FrequencyDomainBodyGyroscopeMagnitudeMean `
  - ` FrequencyDomainBodyGyroscopeMagnitudeStandardDeviation `
  - ` FrequencyDomainBodyGyroscopeMagnitudeMeanFrequency `
  - ` FrequencyDomainBodyGyroscopeJerkMagnitudeMean `
  - ` FrequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation `
  - ` FrequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency `

  