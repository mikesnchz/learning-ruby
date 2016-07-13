books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

sort1 = books.sort! { -1 }
puts sort1
puts
sort2 = books.sort! { 1 }
puts sort2
puts
sort3 = books.sort! { 0 }
puts sort3
