require 'pry'

def palindrone?(n)
  n.to_s == n.to_s.split('').reverse.join('')
end

def go(i, j)
  pals = []
  init_j = j
  while i.to_s.length == 3
    while j.to_s.length == 3
      puts "#{i}\t\t#{j}"
      p = i * j
      j-=1

      pals << p if palindrone?(p)
    end
    j=init_j
    i-=1
  end

  pals.max
end

puts go(999, 999)
