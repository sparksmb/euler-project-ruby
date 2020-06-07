puts (0..999).map{|n| n if (n%3).zero? or (n%5).zero? }.compact.sum
