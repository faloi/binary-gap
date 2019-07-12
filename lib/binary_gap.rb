module Number
  def self.binary_gap(n)
    max_gap = gaps(n).max_by(&:length)
    if max_gap then max_gap.length else 0 end
  end

  def self.gaps(n)
    to_bin(n).scan(/(0+)1+/).flatten
  end

  def self.to_bin(n)
    n.to_s(2)
  end
end
