require 'prime'

factors = 13195.prime_division.flatten.sort.uniq.select{|n| n if n != 1 && 13195 % n == 0 }
puts factors.inspect
puts "----"
puts factors.max

