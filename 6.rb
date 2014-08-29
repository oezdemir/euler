#!/usr/bin/env ruby

##
# Sum square difference
#
#
# The sum of the squares of the first ten natural numbers is,
#
# 														12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# 														(1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


def problem6(num)
	sum_of_squares = (1..num).map{|n| n**2}.reduce(:+)
	square_of_sum = (1..num).reduce(:+)**2
	square_of_sum - sum_of_squares
end

p problem6(100)
