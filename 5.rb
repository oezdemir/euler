#!/usr/bin/env ruby

##
# Smallest multiple
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


def problem5(num)
  div = (2..num).reject{|r| (r+1..num).detect{|d| d%r==0}}
  while div.detect{|d| num % d != 0} do num+=1 end
  num
end

p problem5(20)
