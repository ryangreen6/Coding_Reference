

mean_inlet_biochem <- vector(mode = "numeric", length = ncol(inlet_biochem))

for (i in 1:ncol(inlet_biochem)) {
  mean_value <- mean(inlet_biochem[,i], na.rm = TRUE) 
  mean_inlet_biochem[[i]] <- mean_value
}

mean_inlet_biochem





#Create a new vector called fish that contains the values 8, 10, 12, 23 representing counts of different fish types in a fish tank (goldfish, tetras, guppies, and mollies, respectively). Write a for loop that iterates through fish, and returns what proportion of total fish in the tank are that species. Assume that these counts represent all fish in the tank.
fish_count <- c(8, 10, 12, 23)
fish_type <- c("goldfish", "tetras", "guppies", "mollies")

for (i in seq_along(fish_type)) {
  print(paste0(round((fish[i]/sum(fish_count)), 2) * 100, "% are ", fish_type[i], "."))
}



#There is an existing vector in R called month.name that contains all month names (just ry running month.name in the Console to check it out). Write a for loop that iterates over all months in month.name and prints “January is month 1,” “February is month 2”, etc.

for (i in seq_along(month.name)) {
  print(paste0(month.name[i], " is month", " ", i))
}




# Nested for loops

weekdays <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")
transects <- c("Transect A", "Transect B", "Transect C")

out_matrix <- matrix(nrow = length(weekdays), ncol = length(transects))

for (i in seq_along(weekdays)) {
  for (j in seq_along(transects))
    out_matrix[i,j] <- paste0(weekdays[i], " - ", transects[j])
}


out_matrix

