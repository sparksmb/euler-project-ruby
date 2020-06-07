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

