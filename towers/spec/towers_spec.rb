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
    it "should call #gets" do 

    end 

    it "moves a disk from one stack array to another" do 

    end 

    it "does not allow larger disks to be placed on smaller disks" do 

    end 
  end

  describe "#won?" do 
    it "returns true if second or third stack contains all disks" do 

    end 

    it "returns false if win? condition is not met" do 

    end
  end 

end 