require './lib/math/natural_numbers.rb'

RSpec.describe "Problem 1" do
  it "should list multiples of 3 or 5 and sum the result" do
    expect(NaturalNumber.sequence.to(999).list.multiples_of([3,5]).sum).to eq 233168
  end
end
