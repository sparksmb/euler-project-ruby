class SequenceConfig

  def initialize(from, to)
    @from = from
    @to = to
    @last_term_less_than = 10_000_000
  end

  def to(n)
    @to = n
    self
  end

  def from(n)
    @from = n
    self
  end

  def last_term_less_than(n)
    @last_term_less_than = n
    self
  end

  def list
    Sequence.new((@from..@to).to_a)
  end
end

class Sequence
  attr_accessor :list

  def initialize(new_array)
    @list = new_array
  end

  def evens
    @list.map{|item| item if (item % 2).zero? }.compact
  end

  def multiples_of(ints)
    @list.map{|n| n if ints.map{|i| (n%i).zero? }.count(true) > 0 }.compact
  end
end

