This repo was created to finish the assignment for week 4 of Getting and Cleaning Data .

First, download and unzip the data file into your R working directory.
Second, download the R source code into your R working directory.
Finally, execute R source code to generate tidy data file.

## Data description

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone

## Attribute Information:
  
  For each record in the dataset it is provided:
  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 

## Code flow
The code cleanes the test and train datasets amd then merges them, extracting only mean and standard deviation variables to create another dataset 
grouped by on averages of each variable for each activity.

## New dataset

The new generated dataset contained variables calculated based on the mean and standard deviation. Each row of the dataset is an average of each activity type for all subjects.
The code was written based on the instruction of this assignment

## Script list
The Codebook.md will contain the variable list description and cleaning activities undertake.
The run_analysis.R contains the code used to generate the tidy data
