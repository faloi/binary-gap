module Number
  def self.binary_gap(n)
    gaps to_bin(n)
  end

  def self.gaps(bin)
    bin.scan(/0+/)
  end

  def self.to_bin(n)
    n.to_s(2)
  end
end
