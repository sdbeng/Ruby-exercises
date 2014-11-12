movies = {Firefox: 4, Hulk: 3, AnaFrank: 4}
puts "What would you like to do?"
choice = gets.chomp

case choice
when "add"
#if the movie is not already in the hash, add it:

  puts "Enter a movie title:"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What your movie's rating- (0-5)?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "The movie #{title} with rating #{rating} was successfully added."
  else
    puts "This movie already exists in our database."
  end
when "update"
  puts "Updated!"
when "display"
  puts "Movies!"
when "delete"
    puts "Deleted!"
else
  puts "Error!"
end