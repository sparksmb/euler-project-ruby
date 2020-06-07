require './lib/math/natural_numbers.rb'

MAX = 20
max_fact = (1..MAX).reduce(:*)
puts max_fact
list =  NaturalNumber.factors(max_fact)

def is_divisible_by_all? n
  (1..MAX).map{|i| n % i == 0 ? 1 : 0 }.sum == MAX
end

result = nil
list.each do |n|
  if is_divisible_by_all? n
    result = n
    break
  end
end

puts result
