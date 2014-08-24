# download.file(
# "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
# "getdata_projectfiles_UCI HAR Dataset.zip",
# method="curl")
# unzip("getdata_projectfiles_UCI HAR Dataset.zip")
library(stringr);

get_header = function(){
        fdata = read.delim("./features.txt",sep =" ", col.names = c("id","feature"));
        fdata$header = str_replace(fdata$feature,"\\(\\)","")
        fdata$header = str_replace_all(fdata$header,"-","_")
        fdata;
        set = !is.na(str_match(fdata$header,"_mean"))[,1] | !is.na(str_match(fdata$header,"_std"))[,1]
        mean_std_fdata = fdata[set,]
        mean_std_fdata;       
}
read_and_clean_set = function (dir, ...){
        if(dir == "test"){
                file = "test/X_test.txt";
        }else if(dir == "train"){
                file = "train/X_train.txt";
        }else{
                stop("Wrong directory! Possible options: test/train")
        }
        data = read.delim(file,header = F, ...);
        data$V1 = as.vector(data$V1);
        data$V1 = str_replace_all(data$V1, '^ +',"")
        data$V1 = str_replace_all(data$V1, ' +',",")
        header = get_header();
        cdata = t(sapply(strsplit(data$V1,","), function(x){
                y = as.numeric(x)
                y = y[header$id]
                }
        ))
        cdata = as.data.frame(cdata)
        names(cdata) = header$header;
        cdata
}
attach_subject = function(dir, cdata){
        if(dir == "test"){
                file = "test/subject_test.txt";
        }else if(dir == "train"){
                file = "train/subject_train.txt";
        }else{
                stop("Wrong directory! Possible options: test/train")
        }
        nrows = dim(cdata)[1]
        subdata = read.delim(file,header = F, nrows = nrows,col.names = "subject");
        cdata = cbind(subdata,cdata);
        cdata
}
attach_label = function(dir,cdata){
        if(dir == "test"){
                file = "test/y_test.txt";
        }else if(dir == "train"){
                file = "train/y_train.txt";
        }else{
                stop("Wrong directory! Possible options: test/train")
        }
        labeldata = read.delim("./activity_labels.txt", 
                                header=F, sep = " ",
                                col.names = c("label","activity"));
        nrows = dim(cdata)[1]
        actdata = read.delim(file,header = F, nrows = nrows,col.names = "label");
        actdata = merge.data.frame(actdata, labeldata,by = "label", sort = F, all.x= T)
        activity = actdata$activity;
        cdata = cbind(activity,cdata);
        cdata
        
        
        
}
process_data = function(dir){
        if(!dir %in% c("test","train")){
                stop("Wrong directory! Possible options: test/train")
        }
        data = read_and_clean_set(dir)
        data = attach_subject(dir,data);
        data = attach_label(dir,data)
        data
}
merge = function(){
        data = rbind(process_data("test"),process_data("train"))
        data$activity = as.vector(data$activity)
        attach(data)
        final = aggregate(data,by = list(activity,subject),FUN =  mean)
        final$activity = final$Group.1
        drops <- c("Group.1","Group.2")
        final = final[,!(names(final) %in% drops)]
        final
}


