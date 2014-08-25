# download.file(
# "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
# "getdata_projectfiles_UCI HAR Dataset.zip",
# method="curl")
# unzip("getdata_projectfiles_UCI HAR Dataset.zip")
library(stringr);

get_header = function(){
        fdata = read.delim("./features.txt",sep =" ", col.names = c("id","feature"));
        fdata;
        fdata$header = str_replace(fdata$feature,"\\(\\)","")
        fdata$header = str_replace_all(fdata$header,"-","_")
        set = !is.na(str_match(fdata$feature,"-mean\\(\\)"))[,1] | !is.na(str_match(fdata$feature,"-std\\(\\)"))[,1]
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
        header = get_header();
        cdata = read.table(file,...)
        cdata  = cdata[, header$id];
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
        subdata = read.table(file,nrows = nrows,col.names = "subject", stringsAsFactors = F);
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
        labeldata = read.table("./activity_labels.txt", 
                                col.names = c("label","activity"),
                                stringsAsFactors = F);
        nrows = dim(cdata)[1]
        actdata = read.table(file, 
                             nrows = nrows,
                             col.names = "label",
                             stringsAsFactors = F);
        actdata$rowno = seq_along(actdata$label)
        actdata = merge.data.frame(actdata, labeldata,by = "label",  all.x= T)
        actdata = actdata[order(actdata$rowno),]
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
        names = names(data);
        metrics = ! names %in% c("subject","activity")
        final = aggregate(data[,metrics],by = list(activity,subject),FUN =  mean)
        names(final) = names
        final
}
run_analysis = function(out = "output.txt"){
        final = merge()
        write.table(final, file = out, row.names = F)
}

