require "rspec"
require "towers"

describe Towers do 
  subject(:game) {Towers.new}
  
  describe "#initialize" do
  it "should create an array containing 3 sub arrays" do
    expect(game.stacks).to eq([[4,3,2,1],[],[]])
  end
end

  describe "#move" do
    # let(:input) {(0,2)}
    # it "should call #gets" do 
      #abandoned spec, too much!
    # end 

    it "moves a disk from one stack array to another" do 
      game.move(0,2)
      expect(game.stacks).to eq([[4,3,2],[],[1]])
    end 

    it "does not allow larger disks to be placed on smaller disks" do 
      game.stacks = [[4,3,2],[],[1]]
      expect{game.move(0,2)}.to raise_error("You can't sit with us!")
    end 
  end

  describe "#won?" do 
    it "returns true if second or third stack contains all disks" do 
      game.stacks = [[],[4,3,2,1],[]]
      expect(game.won?).to be true
    end 

    it "returns false if win? condition is not met" do 
      game.stacks = [[4,3,2],[],[1]]
      expect(game.won?).to be false
    end
  end 

end 