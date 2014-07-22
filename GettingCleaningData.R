

## REQ 1.Merges the training and the test sets to create one data set.

# Training set preparation
xtrain<-read.table("X_train.txt", header=FALSE)
ytrain<-read.table("y_train.txt", header=FALSE)
strain<-read.table("subject_train.txt", header=FALSE)
names(ytrain)<-'Labels'
names(strain)<-'Subject'
train<-cbind(xtrain,ytrain,strain)


# Test set preparation
xtest<-read.table("X_test.txt", header=FALSE)
ytest<-read.table("y_test.txt", header=FALSE)
stest<-read.table("subject_test.txt", header=FALSE)
names(ytest)<-'Labels'
names(stest)<-'Subject'
test<-cbind(xtest,ytest,stest)


#Data combined
data<-rbind(train,test)

#Setting colums names
feat<-read.table("features.txt", header=FALSE)
name<-append(as.vector(feat$V2),c('Labels','Subject'))
names(data)<-name

## REQ. 2.Extracts only the measurements on the mean and standard deviation for each measurement.
## and: 'Labels', Subject
c<-sort(append(grep('mean',name),grep('std',name)))
data2<-subset(data,select=c(c,ncol(data)-1,ncol(data)))


# 3.Uses descriptive activity names to name the activities in the data set
act<-read.table("activity_labels.txt", header=FALSE)
data3<-merge(data2,act,by.x='Labels', by.y='V1')
names(data3)[ncol(data3)]<-'Activity_Label'
data3$Labels<-NULL
Measurment_of_activities<-as.data.table(data3)
# 4.Appropriately labels the data set with descriptive variable names. 
#already done in recent steps

#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
Measurment_of_activities_mean<-Measurment_of_activities[,lapply(.SD,mean),by=list(Subject,Activity_Label)]




