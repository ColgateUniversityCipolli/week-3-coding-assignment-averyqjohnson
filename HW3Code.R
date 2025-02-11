
###############################################################################
# Homework 3
###############################################################################

###############################################################################
# NOTES -- before code
###############################################################################

# the %in% operator
  # match returns a vector of the positions of (first) matches of its first argument in its second
  # %in% is a more intuitive interface as a binary operator, which returns a logical vector indicating if there is a match or not for its left operand.

# setdiff()
  # The elements of setdiff(x,y) are those elements in x but not in y

###############################################################################
# Problem 1
###############################################################################

# install the package and load the library for numbers
# provides number-theoretic functions for factorization, prime numbers, etc.
library(numbers)

# define the numbers given from Blake
blake_numbers <- c(6, 10, 14, 15, 21, 22, 26, 33, 34, 35, 38, 39, 46, 51, 55,
                   57, 58, 62, 65, 69, 75, 77, 82, 85, 86, 87, 91, 93, 94, 95)

# check if the number is a product of unique prime numbers
is_product_of_unique_primes <- function(n) {
  factors <- primeFactors(n)
  return(length(factors) == 2 && length(factors) == length(unique(factors)))
}

# find valid unique prime products less than 100 (numbers 1-99)
# sapply(1:99, is_product_of_unique_primes) returns a logical vector
# which extracts the indicies where the function returns TRUE (valid #'s)
# the result is a vector of numbers that are products of unique prime factors

valid_numbers <- which(sapply(1:99, is_product_of_unique_primes))

# identify the incorecct number
incorrect_number <- setdiff(blake_numbers,valid_numbers)

# identify missing numbers
missing_number <- setdiff(valid_numbers, blake_numbers)
