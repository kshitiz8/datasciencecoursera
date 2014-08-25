#datasciencecoursera - Course project 1

##read_and_clean_set()

- reads and cleans the input data(X_train_set/ X_test_set).
- from the clean data, extracts the mean and std measurement for all the variables
- get_header() function gives the header name and position of mean and std measurement of the varibles 

##attach_subject()

- maps the subjects from subject file corresponding to each record in the data.

##attach_activity()

- joins the activity data with activit_label data to map label id with activity name for each record
- maps the activity name corresponding to each record in the data.

##merge_data()
- calls read_and_clean_set() -> attach_subject() -> attach_activity() for test and train dataset
- merges both the data set using rbind()
- does a group by on subject and activity using thae aggreagate function to get the mean of other the measurement field
