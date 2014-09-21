datasciencecoursera
===================

Repository for the Data Cleaning course on Coursera.

The repository is currenly used to submit the assigment project for the class on _Getting and Cleaning Data_. 

The repository contains the following class as a part of the assigment submission:

* CodeBook.md -- it contains all the exlpanations of the final dataset that had been produced 
* run_analysis.R -- R script that contains all the steps were undertaked in order to create a dataset according to the assignment description


## Script

The script `run_analysis.R` merges alle the files and performs the following step in order to create final subset. 

The script:
1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set, which were included in the separate data file.

4. Labels the data set with descriptive variable names. Using regular expression abbreviations were expanded. Optionally spaces can be added to the variable names, however the original version of the script does not add spaces to make variables naming easier for future purposes, e.g. modeling. Additioanl spaces improve readability, but may cause problems while writing scripts. 

5. Creates independent tidy data set with the average of each variable for each activity and each subject.

The final dataset contains 180 observations and 68 variables. Each variable (feature) is in one column. Where the first two variables contain subject ID and activity type as requested in pt.5 of the assignment. 
