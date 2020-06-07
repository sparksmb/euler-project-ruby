require './lib/math/sequence.rb'
require 'prime'

class NaturalNumber
  def self.sequence
    @config ||= SequenceConfig.new(0, 1_000_000)
  end

  def self.prime_factors(n)
    Sequence.new(n.prime_division)
  end

  def self.factors(n)
    factors = []
    min = 1
    max = n
    factors << [min, max]
    while min < max
      min += 1
      if n % min == 0
        max = n / min
        factors << [min, max]
      end
    end
    factors.flatten.uniq.sort
  end
end
