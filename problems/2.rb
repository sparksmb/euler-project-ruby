require './lib/math/fibonacci.rb'

result = 2
limit = 4_000_000
last = 2
term = 3
while term < limit
  result += term if (term % 2).zero?
  prev = last
  last = term
  term = last + prev
end

puts result
