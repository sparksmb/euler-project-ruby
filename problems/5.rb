require './lib/math/integer.rb'

def is_divisible_by_all? n
  (1..10).map{|i| n % i == 0 ? 1 : 0 }.sum == 10
end

n = 1
while is_divisible_by_all?(n) == false do
  n += 1
end

puts n
