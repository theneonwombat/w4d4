require "rspec"
require "tdd"

describe "Array#my_unique" do
  it "returns unique elements in the order in which they appered" do
    expect([1,2,3,1,2,3].my_unique).to eq([1,2,3])
  end
end

describe "Array#to_sum" do 
  it "returns pairs of indexes where the elements sum to 0" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end
end