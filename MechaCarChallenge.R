# Deliverable 1

# Load the dplyr package
library(dplyr)

# Read in dataset
mechacar_table <- read.csv("MechaCar_mpg.csv",check.names = F,stringsAsFactors = F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table)

# Summarize linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table))