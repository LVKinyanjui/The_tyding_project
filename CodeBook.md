This repository contains primarily the R script that contains the code for the project (run_analysis.R). There is a README file that briefly explains the intention of the project.

There are two data tibble objects in the R Script as outlined below

testtrain_tbl     :This is the tibble that contains all the necessary columns that                    have been extracted from the txt files of the original data.

tidyset_tbl       :This contains a tidy data tibble that provides a summary of the                    variables depending on the activity.

The variables are outlined as follows:

 [1] "activity"             "fBodyGyromean()X"     "fBodyGyromean()Y"    
 [4] "fBodyGyromean()Z"     "fBodyGyromeanFreq()X" "fBodyGyromeanFreq()Y"
 [7] "fBodyGyromeanFreq()Z" "fBodyGyrostd()X"      "fBodyGyrostd()Y"     
[10] "fBodyGyrostd()Z" 

The aforementioned activities are represented by factors from 1-6:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
