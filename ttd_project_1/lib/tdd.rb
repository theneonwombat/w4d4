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

end