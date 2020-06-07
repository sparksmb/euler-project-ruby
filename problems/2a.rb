require './lib/math/fibonacci.rb'

puts Fibonacci.sequence.last_term_less_than(4_000_000).list.evens.sum
