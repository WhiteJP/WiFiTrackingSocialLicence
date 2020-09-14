library(shiny)
library(shinythemes)

library(pracma)# for dot product function

# make function to give output of probability acceptable given ratings. 
propAccept <- function(ratings, coefs = coef) {
  #assign values
  int <- -1.36249
  coef <- c(-0.15380, -0.11876, 0.26779, 0.11451, -0.06269, -0.31522, -0.31283, 0.55355, 0.32305, 0.18136, 0.55267)
  
  # error message if values not the same
  if (length(ratings) != length(coefs)) {
    stop("Ratings and coefficient vector must be of same length")}
  
  prob <- 1 / (1 + exp(-(int + pracma::dot(coef, ratings))))
  print(paste0(round(prob*100, 2), "%"), quote = FALSE)
}

