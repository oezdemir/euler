#!/usr/bin/env ruby

##
# Multiples of 3 and 5
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def problem1(num)
  (1..num-1).select{|a| a%3 ==0 or a%5==0}.reduce(:+)
end

p problem1(1000)
