###datasciencecoursera - Course project 1
======================================

###processing on input data
=========================
#read_and_clean_set()
=========================
- read and cleaned the input data.
- from the clean data, extracted the mean and std measurement for all the variables
#attach_subject()
=========================
- mapped the subjects from subject file corresponding to each record in the data.
#attach_activity()
=========================
- joined the activity data with activit_label data to map label id with activity name for each record
- mapped the activity name corresponding to each record in the data. function: 

did a group by on subject and activity using thae aggreagate function to get the mean of other the measurement field
