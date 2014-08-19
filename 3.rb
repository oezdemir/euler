#!/usr/bin/env ruby

##
# Largest prime factor
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?


def problem3(num)
  prime = num
  while num%2==0 do num/=2 end
  (3..Math.sqrt(num).to_i).step(2).each { |pf|
    break if num < pf
    while num%pf==0 do
      num/=pf
      prime = pf
    end
  }
  prime
end

p problem3(600851475143)
