class Array

  def my_unique
    unique = []
    self.each do |ele|
      unique << ele unless unique.include?(ele)
    end
    unique
  end

  def two_sum
    pairs = []
    self.each_index do |i|
      ((i+1)...self.length).each do |j|
        pairs << [i,j] if self[i] + self[j] == 0
      end
    end
    pairs
  end

  def my_transpose
    outer = []
    (0...self.length).each do |i|
      inner = [] 
      (0...self.length).each do |j|
        inner << self[j][i]
      end 
      outer << inner
    end 
    outer
  end 

  def stock_picker
    max = 0
    pairs = []
    (0...self.length-1).each do |buy|
      (0+1...self.length).each do |sell|
        profit = self[sell] - self[buy] 
        if profit > max 
          max = profit
          pairs = [buy, sell]
        end 
      end 
    end 
    pairs 
  end 

end