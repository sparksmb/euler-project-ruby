require './lib/math/natural_numbers.rb'

puts NaturalNumber.factors_of(13195).sorted_flat_uniq_list.primes.max
puts '----'
puts NaturalNumber.factors_of(600_851_475_143).sorted_flat_uniq_list.primes.max
