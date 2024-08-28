library(tidyverse)


force <- function(mass, acceleration) {
  newtons <- (mass * acceleration)
  print(paste0("The resulting force is", newtons, "Newtons"))
}




fish_weight <- function(fish_name, tot_length) {
  fish_parms <- data.frame(sci_name = c("chanos chanos",
                                        "sphyraena barracuda",
                                        "caranx ignobilis"),
                           common_name = c("milkfish",
                                           "great barracuda",
                                           "giant trevally"),
                           a_est = c(0.0905, 0.0181, 0.0353),
                           b_est = c(2.52, 3.27, 3.05))
  
  fish_select <- fish_parms %>% dplyr::filter(common_name == fish_name)
  
  est_fish_weight <- fish_select$a_est * tot_length ^ fish_select$b_est
  print(paste0("The estimated length of your fish is ", round(est_fish_weight, digits = 2)))
}


fish_weight("milkfish", 2)

fish_lengths <- seq(from = 0, to = 100, by = 1)

fish_weight("milkfish", fish_lengths)
