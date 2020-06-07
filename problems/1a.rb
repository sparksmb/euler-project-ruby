require './lib/math/natural_numbers.rb'

puts NaturalNumber.sequence.to(999).list.multiples_of([3,5]).sum
