# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
hola = { name: "Hola", address: "7 rue d'Espagne, Madrid ", phone_number: '0101010101' }
welcome = { name: "Welcome", address: "9 rue d'angleterre, London ", phone_number: '0202020202' }
bonjour = { name: "Bonjour", address: "12 rue de France, Paris ", phone_number: '0303030303' }
gutentag = { name: "Gutentag", address: "3 rue d'Allemagne, Berlin ", phone_number: '0404040404' }
willkommen = { name: "Willkommen", address: "1 rue d'Hollande, Amsterdam ", phone_number: '0505050505' }

[hola, welcome, bonjour, gutentag, willkommen].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
