require './lib/math/sequence.rb'

class NaturalNumber
  def self.sequence
    @config ||= SequenceConfig.new(0, 1_000_000)
  end
end
