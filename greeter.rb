def greeter(name)
    return "Hello, #{name}!"
end

def by_three?(x)
    return x % 3 == 0
end

puts "Enter name:"
my_name = gets.chomp
output = greeter(my_name)
puts output

puts "Enter #:"
num = gets.chomp
output = by_three?(num.to_i)
puts output
<<<<<<< HEAD

end
=======
>>>>>>> 43ea0ee609d5c719de6c057ede0585b623c91569
