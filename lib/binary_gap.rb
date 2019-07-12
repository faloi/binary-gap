module Number
  def self.binary_gap(n)
    gaps(n).map(&:length).max || 0
  end

  def self.gaps(n)
    to_bin(n).scan(/(0+)1+/).flatten
  end

  def self.to_bin(n)
    n.to_s(2)
  end
end
