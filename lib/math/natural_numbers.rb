require './lib/math/sequence.rb'

class NaturalNumber
  def self.sequence
    @config ||= Configuration.new(0, 1_000_000)
  end


  class Configuration
    def initialize(from, to)
      @from = from
      @to = to
    end

    def to(n)
      @to = n
      self
    end

    def from(n)
      @from = n
      self
    end

    def list
      Sequence.new((@from..@to).to_a)
    end
  end
end
