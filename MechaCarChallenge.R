# Deliverable 1

# Load the dplyr package
library(dplyr)

# Read in dataset
mechaCar <- read.csv("MechaCar_mpg.csv",check.names = F,stringsAsFactors = F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar)

# Summarize linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar))

# Deliverable 2

# Read in dataset
suspension_coil <- read.csv("Suspension_Coil.csv",check.names = F,stringsAsFactors = F)

# Retrieve the mean, median, variance, and std of the suspension coil's PSI column
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Group each manufacturing lot by the mean, median, variance and std
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')