#Step1 
#load features
features<-read.table("features.txt",header=FALSE)
#Step2
#load activity add column names for activity
activity<-read.table("activity_labels.txt",header=FALSE)
names(activity)<-c("ActivityCode","ActivityName")
#Step 3
#load x train add column name for x_tarin and X_test
x_train <-read.table("x_train.txt",header=FALSE)
#load x test
x_test <-read.table("x_test.txt",header=FALSE)
# add columns names to x_train and x_test
names(x_train)<-features[,2]
names(x_test)<-features[,2]
#Step 4
#filter columns only for mean and std for x_test and x_train
features_index<-grep("mean|std",features[,2])
x_test<-x_test[,features_index]
x_train<-x_train[,features_index]
#Step 5 
#load y_train and y_test and add column names
y_train <-read.table("y_train.txt",header=FALSE)
y_test <-read.table("y_test.txt",header=FALSE)
# add columns names to y_train and y_test
names(y_test)<-c("ActivityCode")
names(y_train)<-c("ActivityCode")
#Step 6
#load subject_train subject_test and add column names
subject_train <-read.table("subject_train.txt",header=FALSE)
subject_test <-read.table("subject_test.txt",header=FALSE)
#add column names to subject_test, subject_train
names(subject_test)<-c("SubjectId")
names(subject_train)<-c("SubjectId")
#Step 7 
#create complete  dataframe for test 
df_test<-cbind(subject_test,y_test,x_test)
#Step 8 
#create complete dataframe for train 
df_train<-cbind(subject_train,y_train,x_train)
#Step 9
 #combine the test and train dataframe
df<-rbind(df_test,df_train)
#Step 10
#add activity lables to the complete df dtaframe
df_all<-merge(activity,df, by ="ActivityCode")
#Step11
# calculate the values for the column request
  rs <- aggregate(df_all[4:ncol(df_all)], by = list( df_all$ActivityCode, df_all$ActivityName,df_all$SubjectId), FUN = mean)
  colnames(rs)[1:3] <- c("ActivityCode","ActivityName","SubjectId")
#Step 12
#write the tidy.txt file
write.table(rs[order(rs$ActivityCode,rs$SubjectId),], file="tidy.txt", row.names = FALSE)
