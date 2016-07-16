class Foo
  attr_accessor :color
    def initialize(color)
    @color = color
  end
end


f = Foo.new("red")
puts f.color
f = Foo.new("blue")
puts f.color


def hello(name)
  return "#{name} is awesome."
end

puts hello "Mike"
puts hello "Barney Stinson"
