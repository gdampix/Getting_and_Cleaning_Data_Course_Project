# library to work on data frames
library(dplyr)
# directory for storing and loading source data
dataDir = 'UCI HAR DAtaset'

if (!file.exists(dataDir)){ # checking if data doesn't exists in directory
   
      if(!file.exists('getdata_projectfiles_UCI HAR Dataset.zip')){ # checking if zip file doesn't exists
            # zip doesn't exist so download it
            fileurl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
            download.file(fileurl,'getdata_projectfiles_UCI HAR Dataset.zip',mode='wb')
      }
      # now that we made sure zip exists so extract it
      unzip('getdata_projectfiles_UCI HAR Dataset.zip',exdir = dataDir)
}
# so now we confirmed that files exist start reding required files

train_sbjects = read.table(file.path(dataDir,'train','subject_train.txt'))
train_X       = read.table(file.path(dataDir,'train','X_train.txt'))
train_Y       = read.table(file.path(dataDir,'train','y_train.txt'))

test_sbjects = read.table(file.path(dataDir,'test','subject_test.txt'))
test_X       = read.table(file.path(dataDir,'test','X_test.txt'))
test_Y       = read.table(file.path(dataDir,'test','y_test.txt'))

##########################################################################################
## Merge the training and the test sets to create one data set.
##########################################################################################

dt = rbind( # row binding =
      cbind(train_sbjects,train_X,train_Y),# column binding |||
      cbind(test_sbjects, test_X, test_Y)
      )
# releasing memmory
rm(train_sbjects, train_X, train_Y, test_sbjects, test_X, test_Y)

# fetching names for columns in `dt` from file and assigning them 
features = read.table(file.path(dataDir,'features.txt'), col.names=c('id','feature'), as.is = T)
names(dt) = c('Subject',features$feature,'Activity') # `subject` and `activity`
                                                     #  are for `*_subjects` and`*_Y` columns

##########################################################################################
## Extracts only the measurements on the mean and standard deviation for each measurement.
##########################################################################################

dt = dt[,grepl('mean|std|Subject|Activity',names(dt))]   # beside mean and std 
                                                         # subject and activity are necessary
                                                         # as they are identifier and labels


##########################################################################################
## Uses descriptive activity names to name the activities in the data set
##########################################################################################

#reading descriptive activity lables from file 
activities = read.table(file.path(dataDir,'activity_labels.txt'),col.names=c('id','activity'))

dt$Activity = factor(dt$Activity, activities$id, activities$activity)


##########################################################################################
## Appropriately label the data set with descriptive variable names.
##########################################################################################

# get names of selected columns
features = names(dt)

# expanding abbriviations to full words
features = gsub('Gyro','Gyroscope',features)
features = gsub('Acc','Accelerometer',features)

features = gsub('Mag','Magnitude',features)
features = gsub('Freq','Frequency',features)
features = gsub('mean','Mean',features)
features = gsub('std','StandardDeviation',features)

features = gsub('^t','TimeDomain',features)
features = gsub('^f','FrequencyDomain',features)

# removing '-' '(' ')' frome names
features = gsub('[-\\(\\)]','',features)

# fixing typo from source data
features = gsub('BodyBody', 'Body',features)


# reassigning modified names/labels for columns
names(dt) = features


##########################################################################################
## creates a second, independent tidy data set with the average of each variable for each
## activity and each subject.
##########################################################################################

tidy_data = dt %>%
      group_by(Subject,Activity) %>% 
      summarise_all(mean) # applying mean to all columns

# saving data to required file `tidy_data.txt`
write.table(tidy_data, 'tidy_data.txt', row.names=F, quote=F )

## optional:
# releasing memmory
rm(dt,activities, dataDir, features)
rm(tidy_data)
