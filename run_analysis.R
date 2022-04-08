# library(tidyverse)
# library(magrittr)
# 
# gc()
# #READING DATA INTO R
# ##Activities
# ###Test Data
# y_test_dir <- "./data/smartphone_data_set/test/y_test.txt"
# y_test <- read.table(y_test_dir, header = FALSE) %>%
#       unlist(recursive = TRUE, use.names = FALSE)
# 
# 
# ###Training Data
# y_train_dir <- "./data/smartphone_data_set/train/y_train.txt"
# y_train <- read.table(y_train_dir, header = FALSE) %>%
#       unlist(recursive = TRUE, use.names = FALSE)
# 
# 
# ##Measured Data
# ###Test Data
# X_test_dir <- "./data/smartphone_data_set/test/X_test.txt"
# X_test <- read.table(X_test_dir, header = FALSE)
# 
# 
# ###Training Data
# X_train_dir <- "./data/smartphone_data_set/train/X_train.txt"
# X_train <- read.table(X_train_dir, header = FALSE)
# 
# 
# 
# 
# #Features/ Variables
# var_names_dir <- "./data/smartphone_data_set/features.txt"
# var_names <- read.table(var_names_dir, header = FALSE)
# 
# 
# 
# 
# #Finding indices and names of variables in features list
# ##mean
# mean_logical <- grepl("fBodyGyro-mean()", var_names$V2)
# mean_index <- grep("fBodyGyro-mean()", var_names$V2)
# mean_names <- var_names$V2[mean_logical] %>%
#       append("activity") %>% sort
# 
# 
# #standard deviation
# std_logical <- grepl("fBodyGyro-std()", var_names$V2)
# std_index <- grep("fBodyGyro-std()", var_names$V2)
# std_names <- var_names$V2[std_logical]
# 
# 
# 
# 
# #creating subsetting vectors for dataframes
# sub_index_vect <- append(mean_index, std_index) %>%
#       append(0) %>% sort
# 
# sub_name_vect <- append(mean_names, std_names)
# sub_name_vect <- gsub("-", "", sub_name_vect)
# 
# 
# 
# #CREATING DATAFRAME AND TIBBLEs
# ##Subsetting dataframe
# ###Test Data
# testset_df <- data.frame(activity = y_test,
#                          var_names = X_test
#                          )
# testset_df <- testset_df[, 1 + sub_index_vect]
# 
# ###Training Data
# trainset_df <- data.frame(activity = y_train,
#                           var_names = X_train
# )
# trainset_df <- trainset_df[, 1 + sub_index_vect]
# 
# 
# 
# #Renaming dataframe columns
# names(testset_df)[0:10] <- sub_name_vect
# names(trainset_df)[0:10] <- sub_name_vect
# 
# 
# 
# # #Merging Dataset
# testtrain_df <- merge(testset_df, trainset_df, by = "activity")


#Summary
testtrain_df <- group_by(testtrain_df, activity)
tidyset_tbl <- summarize(testtrain_df, mean("fBodyGyromean()X"))

