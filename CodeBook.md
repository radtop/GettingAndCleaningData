CODEBOOK


Variables:
variables present the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
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


Transformations:

Data transformation consist of 3 steps: Import, Clean and Merge, Aggregate 

1. Import:
Import data: 

subject_test.txt
X_test.txt
y_test.txt

subject_train.txt
X_train.txt
y_train.txt

activity_labels.txt
features.txt


- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'X_train.txt': Training set.

- 'y_train.txt': Training labels.

- 'X_test.txt': Test set.

- 'y_test.txt': Test labels.


- 'subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

2. Clean and merge

Below transformations are described.

a) x_test,y_test,subject_test joined together side by side, number of observations is the same in all tables
b) x_train,y_train,subject_train joined together side by side, number of observations is the same in all tables
c) above datasets appended one to another - new dataset has got the same number of collumns, num. of observations eguals sum of two tables
d) column names are imported form features.txtt and put to the dataframe
e) dataframe created in last step is merged with Activity labels
f) the dataset Measurment_of_activities is created

4. Aggregate
Measurment_of_activities is aggregated creating mean for every measurment for each combination of Subject and Activity_Label

