class Problem1a
  def self.solve
    NaturalNumber.sequence.to(999).list.multiples_of([3,5]).sum
  end
end
