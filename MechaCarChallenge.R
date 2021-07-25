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

# Deliverable 3

# Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 PSI.
t.test(suspension_coil$PSI, mu=1500)

# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 PSI.
t.test(subset(suspension_coil,Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(suspension_coil,Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(suspension_coil,Manufacturing_Lot == "Lot3")$PSI, mu=1500)