Code Book
===========

## Introduction
 This file contains the information about all the step which were undertaken in order to transform and compile the final dataset. 
 
## Data

Original datasets are in separated files of testing and trainign chunks. 
The script merges all the required data into one data frame. No renaming is requird, since the script assumes the original file names from the downloaded archive are untouched. 


## Variables

|   |Variable symbol                                 |Explanation                                                   |
|:--|:-----------------------------------------------|:------------------------------------------------------|
|1  |subject                                         |Subject individual ID                                                |
|2  |activity                                        |Activity type WALKING/STANDING/LAYING/etc.                                               |
|3  |FrequencyBodyAccelerationJerkMeanX              |Frequency Body Acceleration Jerk mean X                |
|4  |FrequencyBodyAccelerationJerkMeanY              |Frequency Body Acceleration Jerk mean Y                |
|5  |FrequencyBodyAccelerationJerkMeanZ              |Frequency Body Acceleration Jerk mean Z                |
|6  |FrequencyBodyAccelerationJerkStDevX             |Frequency Body Acceleration Jerk standard deviation X              |
|7  |FrequencyBodyAccelerationJerkStDevY             |Frequency Body Acceleration Jerk standard deviation Y              |
|8  |FrequencyBodyAccelerationJerkStDevZ             |Frequency Body Acceleration Jerk standard deviation Z              |
|9  |FrequencyBodyAccelerationMagnitudeMean          |Frequency Body Acceleration Magnitude mean             |
|10 |FrequencyBodyAccelerationMagnitudeStDev         |Frequency Body Acceleration Magnitude standard deviation           |
|11 |FrequencyBodyAccelerationMeanX                  |Frequency Body Acceleration mean X                     |
|12 |FrequencyBodyAccelerationMeanY                  |Frequency Body Acceleration mean Y                     |
|13 |FrequencyBodyAccelerationMeanZ                  |Frequency Body Acceleration mean Z                     |
|14 |FrequencyBodyAccelerationStDevX                 |Frequency Body Acceleration standard deviation X                   |
|15 |FrequencyBodyAccelerationStDevY                 |Frequency Body Acceleration standard deviation Y                   |
|16 |FrequencyBodyAccelerationStDevZ                 |Frequency Body Acceleration standard deviation Z                   |
|17 |FrequencyBodyBodyAccelerationJerkMagnitudeMean  |Frequency Body Acceleration Jerk Magnitude mean   |
|18 |FrequencyBodyBodyAccelerationJerkMagnitudeStDev |Frequency Body Acceleration Jerk Magnitude standard deviation |
|19 |FrequencyBodyBodyGyroscopeJerkMagnitudeMean     |Frequency Body Gyroscope Jerk Magnitude mean      |
|20 |FrequencyBodyBodyGyroscopeJerkMagnitudeStDev    |Frequency Body Gyroscope Jerk Magnitude standard deviation    |
|21 |FrequencyBodyBodyGyroscopeMagnitudeMean         |Frequency Body Gyroscope Magnitude mean           |
|22 |FrequencyBodyBodyGyroscopeMagnitudeStDev        |Frequency Body Gyroscope Magnitude standard deviation         |
|23 |FrequencyBodyGyroscopeMeanX                     |Frequency Body Gyroscope mean X                        |
|24 |FrequencyBodyGyroscopeMeanY                     |Frequency Body Gyroscope mean Y                        |
|25 |FrequencyBodyGyroscopeMeanZ                     |Frequency Body Gyroscope mean Z                        |
|26 |FrequencyBodyGyroscopeStDevX                    |Frequency Body Gyroscope standard deviation X                      |
|27 |FrequencyBodyGyroscopeStDevY                    |Frequency Body Gyroscope standard deviation Y                      |
|28 |FrequencyBodyGyroscopeStDevZ                    |Frequency Body Gyroscope standard deviation Z                      |
|29 |TimeBodyAccelerationJerkMagnitudeMean           |Time Body Acceleration Jerk Magnitude mean             |
|30 |TimeBodyAccelerationJerkMagnitudeStDev          |Time Body Acceleration Jerk Magnitude standard deviation           |
|31 |TimeBodyAccelerationJerkMeanX                   |Time Body Acceleration Jerk mean X                     |
|32 |TimeBodyAccelerationJerkMeanY                   |Time Body Acceleration Jerk mean Y                     |
|33 |TimeBodyAccelerationJerkMeanZ                   |Time Body Acceleration Jerk mean Z                     |
|34 |TimeBodyAccelerationJerkStDevX                  |Time Body Acceleration Jerk standard deviation X                   |
|35 |TimeBodyAccelerationJerkStDevY                  |Time Body Acceleration Jerk standard deviation Y                   |
|36 |TimeBodyAccelerationJerkStDevZ                  |Time Body Acceleration Jerk standard deviation Z                   |
|37 |TimeBodyAccelerationMagnitudeMean               |Time Body Acceleration Magnitude mean                  |
|38 |TimeBodyAccelerationMagnitudeStDev              |Time Body Acceleration Magnitude standard deviation                |
|39 |TimeBodyAccelerationMeanX                       |Time Body Acceleration mean X                          |
|40 |TimeBodyAccelerationMeanY                       |Time Body Acceleration mean Y                          |
|41 |TimeBodyAccelerationMeanZ                       |Time Body Acceleration mean Z                          |
|42 |TimeBodyAccelerationStDevX                      |Time Body Acceleration standard deviation X                        |
|43 |TimeBodyAccelerationStDevY                      |Time Body Acceleration standard deviation Y                        |
|44 |TimeBodyAccelerationStDevZ                      |Time Body Acceleration standard deviation Z                        |
|45 |TimeBodyGyroscopeJerkMagnitudeMean              |Time Body Gyroscope Jerk Magnitude mean                |
|46 |TimeBodyGyroscopeJerkMagnitudeStDev             |Time Body Gyroscope Jerk Magnitude standard deviation              |
|47 |TimeBodyGyroscopeJerkMeanX                      |Time Body Gyroscope Jerk mean X                        |
|48 |TimeBodyGyroscopeJerkMeanY                      |Time Body Gyroscope Jerk mean Y                        |
|49 |TimeBodyGyroscopeJerkMeanZ                      |Time Body Gyroscope Jerk mean Z                        |
|50 |TimeBodyGyroscopeJerkStDevX                     |Time Body Gyroscope Jerk standard deviation X                      |
|51 |TimeBodyGyroscopeJerkStDevY                     |Time Body Gyroscope Jerk standard deviation Y                      |
|52 |TimeBodyGyroscopeJerkStDevZ                     |Time Body Gyroscope Jerk standard deviation Z                      |
|53 |TimeBodyGyroscopeMagnitudeMean                  |Time Body Gyroscope Magnitude mean                     |
|54 |TimeBodyGyroscopeMagnitudeStDev                 |Time Body Gyroscope Magnitude standard deviation                   |
|55 |TimeBodyGyroscopeMeanX                          |Time Body Gyroscope mean X                             |
|56 |TimeBodyGyroscopeMeanY                          |Time Body Gyroscope mean Y                             |
|57 |TimeBodyGyroscopeMeanZ                          |Time Body Gyroscope mean Z                             |
|58 |TimeBodyGyroscopeStDevX                         |Time Body Gyroscope standard deviation X                           |
|59 |TimeBodyGyroscopeStDevY                         |Time Body Gyroscope standard deviation Y                           |
|60 |TimeBodyGyroscopeStDevZ                         |Time Body Gyroscope standard deviation Z                           |
|61 |TimeGravityAccelerationMagnitudeMean            |Time Gravity Acceleration Magnitude mean               |
|62 |TimeGravityAccelerationMagnitudeStDev           |Time Gravity Acceleration Magnitude standard deviation             |
|63 |TimeGravityAccelerationMeanX                    |Time Gravity Acceleration mean X                       |
|64 |TimeGravityAccelerationMeanY                    |Time Gravity Acceleration mean Y                       |
|65 |TimeGravityAccelerationMeanZ                    |Time Gravity Acceleration mean Z                       |
|66 |TimeGravityAccelerationStDevX                   |Time Gravity Acceleration standard deviation X                     |
|67 |TimeGravityAccelerationStDevY                   |Time Gravity Acceleration standard deviation Y                     |
|68 |TimeGravityAccelerationStDevZ                   |Time Gravity Acceleration standard deviation Z                     |
