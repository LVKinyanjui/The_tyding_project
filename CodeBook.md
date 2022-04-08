#Project Overview
This repository contains primarily the R script that contains the code for the project (run_analysis.R). There is a README file that briefly explains the intention of the project.

There are two dataframes / data tibble objects in the R Script as outlined below:
###test_set_df
Contains data from the test set

###train_set_df
Contains data from the train set

###testtrain_df
This is a dataframe that contains all the necessary columns                      that have been extracted from the txt files of the original                      data.

###tidyset_tbl       
This contains a tidy data tibble that provides a summary of                     the variables depending on the activity.


##Test and Training Datasets
These datasets are names:
testset_df and trainset_df.
They have the same variables which are outlined as follows

 [1] "activity"             "fBodyGyromean()X"     "fBodyGyromean()Y"    
 [4] "fBodyGyromean()Z"     "fBodyGyromeanFreq()X" "fBodyGyromeanFreq()Y"
 [7] "fBodyGyromeanFreq()Z" "fBodyGyrostd()X"      "fBodyGyrostd()Y"     
[10] "fBodyGyrostd()Z" 

##Activity Levels
The aforementioned activities are represented by factors from 1-6:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


##The Tidy Dataset
This is a combined data set that has both the test and train data. Its columns are named similarly but with a .x or .y ending. This indicates whether they are from the training or test data set

.x    test data
.y    training data

 [1] "activity"               "fBodyGyromean()X.x"     "fBodyGyromean()Y.x"    
 [4] "fBodyGyromean()Z.x"     "fBodyGyromeanFreq()X.x" "fBodyGyromeanFreq()Y.x"
 [7] "fBodyGyromeanFreq()Z.x" "fBodyGyrostd()X.x"      "fBodyGyrostd()Y.x"     
[10] "fBodyGyrostd()Z.x"      "fBodyGyromean()X.y"     "fBodyGyromean()Y.y"    
[13] "fBodyGyromean()Z.y"     "fBodyGyromeanFreq()X.y" "fBodyGyromeanFreq()Y.y"
[16] "fBodyGyromeanFreq()Z.y" "fBodyGyrostd()X.y"      "fBodyGyrostd()Y.y"     
[19] "fBodyGyrostd()Z.y" 

It is summarized according to the different activity levels.

