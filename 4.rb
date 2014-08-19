#!/usr/bin/env ruby

##
# Largest palindrome product
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def problem4(digit)
  num_min =10**(digit-1)
  num_max = 10**digit-1
  (num_min**2..num_max**2).reverse_each.detect{|d| d.to_s == d.to_s.reverse and (num_min..num_max).detect{|divisor| d%divisor == 0 and (d/divisor).to_s.length == digit } }
end

p problem4(3)
