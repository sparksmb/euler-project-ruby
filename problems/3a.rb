require './lib/math/natural_numbers.rb'

puts NaturalNumber.prime_factors(13195).sorted_flat_uniq_list.primes.max
puts '----'
puts NaturalNumber.prime_factors(600_851_475_143).sorted_flat_uniq_list.primes.max
