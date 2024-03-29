# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category:"belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category:"italian"}
mcdonalds = {name: "McDonald's", address: "Muntplein, Amsterdam", category:"french"}
subway = {name: "Subway", address: "Rembrandtplein, Amsterdam", category:"french"}
papa_johns = {name: "Papa John's", address: "Dam, Amsterdam", category:"belgian"}

[dishoom, pizza_east, mcdonalds, subway, papa_johns].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
