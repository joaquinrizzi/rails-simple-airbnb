# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# ADJECTIVES = ["Light", "Enormous", "Cozy", "Well located", "Comfortable"]

10.times do
  Flat.create!(
    name: "#{Faker::Emotion.adjective} Flat #{Faker::Address.city}",
    address: Faker::Address.street_name,
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    number_of_guests: rand(1..10)
  )
end
