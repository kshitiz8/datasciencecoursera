#datasciencecoursera - Course project 1

##read_and_clean_set()

- read and cleaned the input data.
- from the clean data, extracted the mean and std measurement for all the variables
- get_header() function gives the header name and position of mean and std measurement of the varibles 

##attach_subject()

- mapped the subjects from subject file corresponding to each record in the data.

##attach_activity()

- joined the activity data with activit_label data to map label id with activity name for each record
- mapped the activity name corresponding to each record in the data.

##merge_data()
- call read_and_clean_set() -> attach_subject() -> attach_activity() for test and train dataset
- merge both the data set using rbind()
- did a group by on subject and activity using thae aggreagate function to get the mean of other the measurement field
