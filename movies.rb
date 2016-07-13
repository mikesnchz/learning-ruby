movies = {
    :Titanic => 4,
    :"The Big Hit" => 2,
    :"Finding Dory" => 4,
    :"John Wick" => 4
}

puts "Please choose an option:"
puts "-- add"
puts "-- update"
puts "-- display"
puts "-- delete"
choice = gets.chomp.downcase

case choice
when "add"
    puts "Please enter the title of the movie:"
    title = gets.chomp
    title = title.gsub(/\w+/){|word| word.capitalize}
    puts "Please enter a rating for the movie (0 to 4):"
    rating = gets.chomp
    if movies[title.to_sym].nil?
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}."
    else
        puts "#{title} already exists in the database."
    end

when "update"
    puts "Please enter the title of the movie:"
    title = gets.chomp
    title = title.gsub(/\w+/){|word| word.capitalize}
    if movies[title.to_sym].nil?
        puts "Movie does not exist in the database."
    else
        puts "Please enter a new rating for the movie, #{title}:"
        rating = gets.chomp
        puts movies[title.to_sym]
        movies[title.to_sym] = rating.to_i
        puts "#{title}'s rating has been updated."
    end

when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end

when "delete"
    puts "Please enter the title of the movie you want to remove from the database:"
    title = gets.chomp
    title = title.gsub(/\w+/){|word| word.capitalize}
    if movies[title.to_sym].nil?
        puts "Movie does not exist in the database."
    else
        movies.delete(title.to_sym)
        puts "#{title} has been deleted from the database."
        puts "The remaining movies left are:"
        puts
        movies.each do |movie, rating|
            puts "#{movie}: #{rating}"
        end
    end

else
    puts "Error!"
end
