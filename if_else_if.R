
pm2_5 <- 48

# Write an if - else if - else statement that returns “Low to moderate risk” if pm2_5 (for Particulate Matter 2.5) is less than 100, “Unhealthy for sensitive groups” if PM 2.5 is 100 <= pm2_5 < 150, and “Health risk present” if PM 2.5 is >= 150.

if (pm2_5 < 100){
  print( "Low to Moderate Risk")
} else if (100 < pm2_5 & pm2_5 < 150){
  print("Unhealthy for Sensitive Groups")
} else {
  print("Health Risk Present")
}



# Store the string “blue whale” as an object called species. Write an if statement that returns “You found a whale!” if the string “whale” is detected in species, otherwise return nothing. Test by changing the species string & re-running to see output.

species <- "Blue Whale"

if(str_detect(species, "Blue Whale")) {
  print("You found a Whale!")
} else {
  print("This is NOT a Whale")}






#Store the base price of a burrito as base_burrito with a value of 6.50. Store main_ingredient with a starting string of “veggie.” Write a statement that will return the price of a burrito based on what a user specifies as “main_ingredient” (either “veggie”, “chicken” or “steak”) given the following:

#A veggie burrito is the cost of a base burrito
#A chicken burrito costs 3.00 more than a base burrito
#A steak burrito costs 3.25 more than a base burrito

base_burrito <- 6.50 
main_ingredients <- "steak"

if (main_ingredients == "veggie"){
  print(base_burrito)
} else if (main_ingredients == "chicken"){
  print(base_burrito + 3)
} else if (main_ingredients == "steak"){
  print(base_burrito + 3.25)
}
