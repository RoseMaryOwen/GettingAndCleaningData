run_analysis_result data is a dataframe with 180 rows and 68 columns.  It is derived from the original data at
(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Background information about the study and the original data is at (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

 Each observation in the original data is a measurement of a variable for a particular subject and activity.  Variables in the original data containing mean() or std() (aka standard deviation) in their names were selected for processing.  There were 33 
of each kind.  There were also some variables that were slightly different with "Mean" in their name, but no correspondng
std variable.  These were omitted to make the results straightforward and less ambiguous.
Each variable was associated with a Subject and an Activity. 

run_analysis_result contains the average of each of the selected variables, by Subject and Activity. The names were edited to spell out some
of the abbreviations in the original names.  Time in the variable name identifies a time domain variable,
and Frequency in the variable name denotes frequency domain.  Gyro refers to gyroscopic sensor, detecting angular motion, and Acceleration 
refers to linear acceleration.  Linear acceleration due to gravity was separated from linear acceleration created by the body, and is also
distinguished in the variable names. Please consult the background information link above to learn the details of the variables
measured, and also the appended information from the data source on features, appended at the bottom of this document.

Fields in run_analysis_result data:
Column Variable
> [1] "Subject"     values integer 1-30                                              
> [2] "Activity"    values are 

>                     1 WALKING

>                     2 WALKING_UPSTAIRS

>                     3 WALKING_DOWNSTAIRS

>                     4 SITTING

>                     5 STANDING

>                     6 LAYING

> [3] "Average.Time.BodyAcceleration-mean()-XAxis"                
> [4] "Average.Time.BodyAcceleration-mean()-YAxis"                
> [5] "Average.Time.BodyAcceleration-mean()-ZAxis"                
> [6] "Average.Time.BodyAcceleration-std()-XAxis"                 
> [7] "Average.Time.BodyAcceleration-std()-YAxis"                 
> [8] "Average.Time.BodyAcceleration-std()-ZAxis"                 
> [9] "Average.Time.GravityAcceleration-mean()-XAxis"             
> [10] "Average.Time.GravityAcceleration-mean()-YAxis"             
> [11] "Average.Time.GravityAcceleration-mean()-ZAxis"             
> [12] "Average.Time.GravityAcceleration-std()-XAxis"              
> [13] "Average.Time.GravityAcceleration-std()-YAxis"              
> [14] "Average.Time.GravityAcceleration-std()-ZAxis"              
> [15] "Average.Time.BodyAccelerationJerk-mean()-XAxis"            
> [16] "Average.Time.BodyAccelerationJerk-mean()-YAxis"            
> [17] "Average.Time.BodyAccelerationJerk-mean()-ZAxis"            
> [18] "Average.Time.BodyAccelerationJerk-std()-XAxis"             
> [19] "Average.Time.BodyAccelerationJerk-std()-YAxis"             
> [20] "Average.Time.BodyAccelerationJerk-std()-ZAxis"             
> [21] "Average.Time.BodyGyro-mean()-XAxis"                        
> [22] "Average.Time.BodyGyro-mean()-YAxis"                        
> [23] "Average.Time.BodyGyro-mean()-ZAxis"                        
> [24] "Average.Time.BodyGyro-std()-XAxis"                         
> [25] "Average.Time.BodyGyro-std()-YAxis"                         
> [26] "Average.Time.BodyGyro-std()-ZAxis"                         
> [27] "Average.Time.BodyGyroJerk-mean()-XAxis"                    
> [28] "Average.Time.BodyGyroJerk-mean()-YAxis"                    
> [29] "Average.Time.BodyGyroJerk-mean()-ZAxis"                    
> [30] "Average.Time.BodyGyroJerk-std()-XAxis"                     
> [31] "Average.Time.BodyGyroJerk-std()-YAxis"                     
> [32] "Average.Time.BodyGyroJerk-std()-ZAxis"                     
> [33] "Average.Time.BodyAccelerationMagnitude-mean()"             
> [34] "Average.Time.BodyAccelerationMagnitude-std()"              
> [35] "Average.Time.GravityAccelerationMagnitude-mean()"          
> [36] "Average.Time.GravityAccelerationMagnitude-std()"           
> [37] "Average.Time.BodyAccelerationJerkMagnitude-mean()"         
> [38] "Average.Time.BodyAccelerationJerkMagnitude-std()"          
> [39] "Average.Time.BodyGyroMagnitude-mean()"                     
> [40] "Average.Time.BodyGyroMagnitude-std()"                      
> [41] "Average.Time.BodyGyroJerkMagnitude-mean()"                 
> [42] "Average.Time.BodyGyroJerkMagnitude-std()"                  
> [43] "Average.Frequency.BodyAcceleration-mean()-XAxis"           
> [44] "Average.Frequency.BodyAcceleration-mean()-YAxis"           
> [45] "Average.Frequency.BodyAcceleration-mean()-ZAxis"           
> [46] "Average.Frequency.BodyAcceleration-std()-XAxis"            
> [47] "Average.Frequency.BodyAcceleration-std()-YAxis"            
> [48] "Average.Frequency.BodyAcceleration-std()-ZAxis"            
> [49] "Average.Frequency.BodyAccelerationJerk-mean()-XAxis"       
> [50] "Average.Frequency.BodyAccelerationJerk-mean()-YAxis"       
> [51] "Average.Frequency.BodyAccelerationJerk-mean()-ZAxis"       
> [52] "Average.Frequency.BodyAccelerationJerk-std()-XAxis"        
> [53] "Average.Frequency.BodyAccelerationJerk-std()-YAxis"        
> [54] "Average.Frequency.BodyAccelerationJerk-std()-ZAxis"        
> [55] "Average.Frequency.BodyGyro-mean()-XAxis"                   
> [56] "Average.Frequency.BodyGyro-mean()-YAxis"                   
> [57] "Average.Frequency.BodyGyro-mean()-ZAxis"                   
> [58] "Average.Frequency.BodyGyro-std()-XAxis"                    
> [59] "Average.Frequency.BodyGyro-std()-YAxis"                    
> [60] "Average.Frequency.BodyGyro-std()-ZAxis"                    
> [61] "Average.Frequency.BodyAccelerationMagnitude-mean()"        
> [62] "Average.Frequency.BodyAccelerationMagnitude-std()"         
> [63] "Average.Frequency.BodyBodyAccelerationJerkMagnitude-mean()"
> [64] "Average.Frequency.BodyBodyAccelerationJerkMagnitude-std()" 
> [65] "Average.Frequency.BodyBodyGyroMagnitude-mean()"            
> [66] "Average.Frequency.BodyBodyGyroMagnitude-std()"             
> [67] "Average.Frequency.BodyBodyGyroJerkMagnitude-mean()"        
> [68] "Average.Frequency.BodyBodyGyroJerkMagnitude-std()"   


Text of source document features_info.txt:
==========================================
Feature Selection 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyrorunJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
