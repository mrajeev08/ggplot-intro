# ------------------------------------------------------------------------------------------------ #
#' R Coding Challenge                   
#' Details: some challenges for the Mol Ecol in R Workshop                                                                     
# ------------------------------------------------------------------------------------------------ #

# Part 1: ggplot in R ------------------------------------------------------------------------

# Read in the RxP.csv data from the first day (1 pt)
rxp <- read.csv("RxP.csv")

# Plot the means of the final snout to vent length (SVL.final) 
# by the type of predator treatment (pred) (1 pt)
library(ggplot2)
ggplot(data = rxp, aes(x = Pred, y = SVL.final)) + geom_boxplot()

# Add in the resource variable using color (1 pt)
ggplot(data = rxp, aes(x = Pred, y = SVL.final, color = Res)) + geom_boxplot()

# Now make the same plot as above, but creating a new variable, the difference between SVL.initial 
# and SVL. final by predators and resources (2 pts)
ggplot(data = rxp, aes(x = Pred, y = SVL.final - SVL.initial, color = Res)) + geom_boxplot()

# Plot the correlation between SVL.final and SVL.inital (1 pt)
ggplot(data = rxp, aes(x = SVL.initial, y = SVL.final, color = Res)) + geom_point()

# Extra credit: **draw** a plot  that would show the results of your study! (2 pts)

# Part 2: thinking through age and infection --------------------------------------------

# Plot the relationship between the force of infection (range between 0.01 - 5) and 
# the average age of infection (1 pt)
# Hint: the average age of infection = 1/the force of infection
lambda <- seq(0, 5, by = 0.01)
plot(lambda, 1/lambda, type = "l")

# Plot the relationship between R0 (range between 1 - 20) and the average age of infection 
# if life expectancy at birth is 75 years. (1 pt)

# Hint: the average age of infection = 1/the force of infection
# and R0 = the force of infection*life expectancy

R0 <- seq(1, 20, by = 0.5)
plot(R0, 75/R0) 
# can work through the basic math with them, solving for avg age of infection