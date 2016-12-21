# Object Classification: classes with probabilities
# License: BSD

# Possible Types (enum, to be extended)
uint8 UNCLASSIFIED=0
uint8 PEDESTRIAN=1
uint8 BICYCLE=2
uint8 MOTORBIKE=3
uint8 CAR=4
uint8 TRUCK=5
# If object class is definitely none of the upper, these classes are to be used
uint8 OTHER_STATIC=91
uint8 OTHER_DYNAMIC=92

# The object classes with their respective probability
#    Sorted descending by probability (highest first)
ClassWithProbability[] classes_with_probabilities
