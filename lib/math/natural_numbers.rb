require './lib/math/sequence.rb'
require 'prime'

class NaturalNumber
  def self.sequence
    @config ||= SequenceConfig.new(0, 1_000_000)
  end

  def self.factors_of(n)
    Sequence.new(n.prime_division)
  end
end
