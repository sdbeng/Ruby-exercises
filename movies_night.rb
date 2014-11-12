movies = {Firefox: 4, Hulk: 3, AnaFrank: 4}
puts "What would you like to do?"
choice = gets.chomp

case choice
when "add"
#if the movie is not already in the hash, add it:
  puts "Enter a movie title:"
  title = gets.chomp
  #if the movie's title is nil, add it up
  if movies[title.to_sym].nil?
 
  puts "What your movie's rating- (0-5)?"
  rating = gets.chomp
  movies[title.to_sym] = rating.to_i
  puts "The movie #{title} with rating #{rating} was successfully added."
else
    puts "This movie already exists in our database."
end
when "update"
  puts "Enter a movie title:"
  title = gets.chomp
  #if the movie's title is nil, then movie is not in hash
  if movies[title.to_sym].nil?
      puts "Sorry, that movie is not in our database. Add it in!"
  else
      #we need to update the movie's hash
      puts "Enter a new rating - (0-5)"
      rating = gets.chomp
      #set the movie's rating to that new title
      movies[title.to_sym] = rating.to_i
      puts "The title #{title} has a new rating of #{rating}!"
  end
when "display"
  movies.each{|m,r| puts "#{m}: #{r}" }
when "delete"
  puts "Enter a movie title to delete:"
  title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Movie not in database!"
    else
        movies.delete(title.to_sym)
        puts "Movie title #{title.to_sym} succesfully deleted!"
    end
    
else
  puts "Error!"
end