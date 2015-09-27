##Rose Mary Owen, September 27, 2015
##This program creates data to satisfy Course Project for
##Coursera "Getting and Cleaning Data" course, following this specification:
##You should create one R script called run_analysis.R that does the following. 
##Merges the training and the test sets to create one data set.
##Extracts only the measurements on the mean and standard deviation for each measurement. 
##Uses descriptive activity names to name the activities in the data set
##Appropriately labels the data set with descriptive variable names. 
##From the data set in step 4, creates a second, independent tidy data set
##with the average of each variable for each activity and each subject.
##Data is at 
##  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##Background information is at
##  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Read in labels for features vector elements.
features<-read.table("./features.txt")

##Determine which elements of "features"vector to extract.
m<-grep("mean()",features[,2],fixed=TRUE)
s<-grep("std()",features[,2],fixed=TRUE)
use<-sort(c(m,s))
varnames<-features[use,2]
##Edit variable names for "features" vectors to be clearer.
varnames <- gsub("Mag","Magnitude",varnames,fixed="TRUE")
varnames <- gsub("Acc","Acceleration",varnames,fixed="TRUE")
varnames<- gsub("-X","-XAxis",varnames,fixed=TRUE)
varnames<- gsub("-Y","-YAxis",varnames,fixed=TRUE)
varnames<- gsub("-Z","-ZAxis",varnames,fixed=TRUE)
varnames<- lapply(varnames,function(x) paste("Average.",x,sep=""))
varnames<- gsub("Average.t","Average.Time.",varnames,fixed="TRUE")
varnames<- gsub("Average.f","Average.Frequency.",varnames,fixed="TRUE")
varnames<-c("Subject","Activity",varnames)

##Read in data files, selecting columns with use variable from above. Note: Since subjects were partitioned into test and training groups, the records for each 
##subject appearin exactly one of the test data or the training data.  cbind and rbind are sufficient for 
##combining the data in the format given us. Also, there are no missing values in the data.
xtest<- read.table("./X_test.txt")[use]
xtrain<- read.table("./X_train.txt")[use]
subjecttest<- read.table("./subject_test.txt")
subjecttrain<- read.table("./subject_train.txt")
ytest<- read.table("./y_test.txt")
ytrain<- read.table("./y_train.txt")
X<-rbind(xtest,xtrain)
y<-rbind(ytest,ytrain)
subject<-rbind(subjecttest,subjecttrain)
data<-cbind(subject,y,X)
data<-data[order(data[,1],data[,2]),]
names(data) <- varnames

##Aggregate data by first 2 columns using mean. Drop first two columns created by aggregate()
##before writing table
byvars<-list(data$Subject,data$Activity)
meandata<-aggregate(data,byvars,mean)

##Write meandata to a text file named meand data, except for first two columns created by
##aggregate() and substitute activity names for integers 1-6 in Activity column
activity_labels <- read.table("./activity_labels.txt")
meandata$Activity <-activity_labels[meandata$Activity,2]
t <- dim(meandata)[2]
run_analysis_result <- meandata[,3:t]
write.table(run_analysis_result,"./run_analysis_result.txt",row.names=FALSE)

