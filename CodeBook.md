## Tidy data set description
### The variables in the tidy data

Tidy data contains 180 rows and 68 columns.The grouping of merged data set was done on each subject and activity group.
Only the mean and standard deviation variables are kept in the tidy set.

Subject column is numbered from 1 to 30. Activity column has 6 types as below.

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

## Cleaning activities

The variable names were cleaned up from () and -. std was renamed to StandardDeviation, freq was renamed to Frequency etc.

The variable list in final tidy data is as follows(after renaming them to be descriptive).

[1] "subject"                                                        "activity"                                                      
[3] "timeDomainBodyAccelerometerMeanX"                               "timeDomainBodyAccelerometerMeanY"                              
[5] "timeDomainBodyAccelerometerMeanZ"                               "timeDomainBodyAccelerometerStandardDeviationX"                 
[7] "timeDomainBodyAccelerometerStandardDeviationY"                  "timeDomainBodyAccelerometerStandardDeviationZ"                 
[9] "timeDomainGravityAccelerometerMeanX"                            "timeDomainGravityAccelerometerMeanY"                           
[11] "timeDomainGravityAccelerometerMeanZ"                            "timeDomainGravityAccelerometerStandardDeviationX"              
[13] "timeDomainGravityAccelerometerStandardDeviationY"               "timeDomainGravityAccelerometerStandardDeviationZ"              
[15] "timeDomainBodyAccelerometerJerkMeanX"                           "timeDomainBodyAccelerometerJerkMeanY"                          
[17] "timeDomainBodyAccelerometerJerkMeanZ"                           "timeDomainBodyAccelerometerJerkStandardDeviationX"             
[19] "timeDomainBodyAccelerometerJerkStandardDeviationY"              "timeDomainBodyAccelerometerJerkStandardDeviationZ"             
[21] "timeDomainBodyGyroscopeMeanX"                                   "timeDomainBodyGyroscopeMeanY"                                  
[23] "timeDomainBodyGyroscopeMeanZ"                                   "timeDomainBodyGyroscopeStandardDeviationX"                     
[25] "timeDomainBodyGyroscopeStandardDeviationY"                      "timeDomainBodyGyroscopeStandardDeviationZ"                     
[27] "timeDomainBodyGyroscopeJerkMeanX"                               "timeDomainBodyGyroscopeJerkMeanY"                              
[29] "timeDomainBodyGyroscopeJerkMeanZ"                               "timeDomainBodyGyroscopeJerkStandardDeviationX"                 
[31] "timeDomainBodyGyroscopeJerkStandardDeviationY"                  "timeDomainBodyGyroscopeJerkStandardDeviationZ"                 
[33] "timeDomainBodyAccelerometerMagnitudeMean"                       "timeDomainBodyAccelerometerMagnitudeStandardDeviation"         
[35] "timeDomainGravityAccelerometerMagnitudeMean"                    "timeDomainGravityAccelerometerMagnitudeStandardDeviation"      
[37] "timeDomainBodyAccelerometerJerkMagnitudeMean"                   "timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation"     
[39] "timeDomainBodyGyroscopeMagnitudeMean"                           "timeDomainBodyGyroscopeMagnitudeStandardDeviation"             
[41] "timeDomainBodyGyroscopeJerkMagnitudeMean"                       "timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation"         
[43] "frequencyDomainBodyAccelerometerMeanX"                          "frequencyDomainBodyAccelerometerMeanY"                         
[45] "frequencyDomainBodyAccelerometerMeanZ"                          "frequencyDomainBodyAccelerometerStandardDeviationX"            
[47] "frequencyDomainBodyAccelerometerStandardDeviationY"             "frequencyDomainBodyAccelerometerStandardDeviationZ"            
[49] "frequencyDomainBodyAccelerometerMeanFrequencyX"                 "frequencyDomainBodyAccelerometerMeanFrequencyY"                
[51] "frequencyDomainBodyAccelerometerMeanFrequencyZ"                 "frequencyDomainBodyAccelerometerJerkMeanX"                     
[53] "frequencyDomainBodyAccelerometerJerkMeanY"                      "frequencyDomainBodyAccelerometerJerkMeanZ"                     
[55] "frequencyDomainBodyAccelerometerJerkStandardDeviationX"         "frequencyDomainBodyAccelerometerJerkStandardDeviationY"        
[57] "frequencyDomainBodyAccelerometerJerkStandardDeviationZ"         "frequencyDomainBodyAccelerometerJerkMeanFrequencyX"            
[59] "frequencyDomainBodyAccelerometerJerkMeanFrequencyY"             "frequencyDomainBodyAccelerometerJerkMeanFrequencyZ"            
[61] "frequencyDomainBodyGyroscopeMeanX"                              "frequencyDomainBodyGyroscopeMeanY"                             
[63] "frequencyDomainBodyGyroscopeMeanZ"                              "frequencyDomainBodyGyroscopeStandardDeviationX"                
[65] "frequencyDomainBodyGyroscopeStandardDeviationY"                 "frequencyDomainBodyGyroscopeStandardDeviationZ"                
[67] "frequencyDomainBodyGyroscopeMeanFrequencyX"                     "frequencyDomainBodyGyroscopeMeanFrequencyY"                    
[69] "frequencyDomainBodyGyroscopeMeanFrequencyZ"                     "frequencyDomainBodyAccelerometerMagnitudeMean"                 
[71] "frequencyDomainBodyAccelerometerMagnitudeStandardDeviation"     "frequencyDomainBodyAccelerometerMagnitudeMeanFrequency"        
[73] "frequencyDomainBodyAccelerometerJerkMagnitudeMean"              "frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation"
[75] "frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency"     "frequencyDomainBodyGyroscopeMagnitudeMean"                     
[77] "frequencyDomainBodyGyroscopeMagnitudeStandardDeviation"         "frequencyDomainBodyGyroscopeMagnitudeMeanFrequency"            
[79] "frequencyDomainBodyGyroscopeJerkMagnitudeMean"                  "frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation"    
[81] "frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency"        
