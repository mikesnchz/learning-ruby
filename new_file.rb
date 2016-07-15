class Foo
  attr_reader :color
  attr_writer :color
  def initialize(color)
    @color = color
  end
end

class Bar
  def initialize(color)
    @color = color
  end

  def color
    @color
  end
end

class Baz
  def initialize(color)
    @color = color
  end

  def color
    @color
  end

  def color=(value)
    @color = value
  end
end



f = Foo.new("red")
f.color! # NoMethodError: undefined method ‘color’
print f.color
