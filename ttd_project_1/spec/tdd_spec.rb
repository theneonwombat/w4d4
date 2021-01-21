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

describe "Array#my_transpose" do 
  it "transposes a square 2D array" do 
    cols = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]]
    trans = [
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]]
    expect(cols.my_transpose).to eq(trans)
  end 
end 

describe "Array#stock_picker" do 
  it "returns the set of days which yield the most profit" do 
    tesla = [10, 15, 80, 20, 100, 2]
    expect(tesla.stock_picker).to eq([0, 4])
  end 
end 