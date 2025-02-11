# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:

puts "seeding..."
Restaurant.destroy_all

puts "creating restaurants..."
Restaurant.create!(name: "Wong Kei", address: "23 London", phone_number: "078223980239", category: "chinese")
puts "created Wong Kei"

Restaurant.create!(name: "Sketch", address: "65 York", phone_number: "23975987298", category: "french")
puts "created Sketch"

Restaurant.create!(name: "Marugame", address: "46 Birmingham", phone_number: "387832484824", category: "japanese")
puts "created Marugame"

Restaurant.create!(name: "Maneken Pis", address: "90 Sandford", phone_number: "92835782358", category: "belgian")
puts "created Maneken Pis"

Restaurant.create!(name: "Il Funghetto", address: "5 Glasgow", phone_number: "09346963309643", category: "italian")
puts "created Il Funghetto"

puts "finished! created #{Restaurant.count} restaurants!"
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
