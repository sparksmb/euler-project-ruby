require './lib/math/sequence.rb'

class Fibonacci
  def self.sequence
    @config ||= Config.new(1,2)
  end

  class Config < SequenceConfig
    def list
      seq = [1,2]
      term = 3
      while term < @last_term_less_than
        seq << term
        term = seq.last(2).sum
      end
      return Sequence.new(seq)
    end
  end
end
