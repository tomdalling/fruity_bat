Vec = Struct.new(:x, :y) do
  def set!(other)
    self.x = other.x
    self.y = other.y
    self
  end

  def +(other)
    Vec[x + other.x, y + other.y]
  end

  def -(other)
    Vec[x - other.x, y - other.y]
  end

  def *(scalar)
    Vec[x*scalar, y*scalar]
  end

  def -@
    Vec[-x, -y]
  end

  def coerce(left)
    [self, left]
  end
end
