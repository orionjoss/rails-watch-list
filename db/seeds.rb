require 'open-uri'
Movie.destroy_all
List.destroy_all

# Create some lists
names = %w[90s GOAT Netflix SciFi Documentary Horror Action Romance Comdey]

names.each do |name|
  List.create!(name: name)
end

puts "Created #{List.count} movie lists 📝"



# the Le Wagon copy of the API
url = 'http://tmdb.lewagon.com/movie/top_rated'
response = JSON.parse(URI.open(url).read)

response['results'].each do |movie_hash|
  puts
  p movie_hash

  # create an instance with the hash
  Movie.create!(
    poster_url: "https://image.tmdb.org/t/p/w500" + movie_hash['poster_path'],
    rating: movie_hash['vote_average'],
    title: movie_hash['original_title'],
    overview: movie_hash['overview']
  )
end

puts "Created #{Movie.count} movies 📽️"
