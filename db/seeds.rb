# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
require "JSON"



url = "https://tmdb.lewagon.com/movie/top_rated"
movies = JSON.parse(URI.open(url).read)["results"]
movies = movies.sample(20)
movies.each do |g|
  Movie.create(
    title: g["original_title"],
    overview: g["overview"],
    poster_url: "https://image.tmdb.org/t/p/w500" + g["poster_path"],
    rating: g["vote_average"]
  )
end
