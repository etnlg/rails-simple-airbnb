# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

100.times {
  @flat = Flat.new
  @flat.address = Faker::Address.street_address
  @flat.name = Faker::Movies::HarryPotter.location
  @flat.description = Faker::Movies::HarryPotter.quote
  @flat.price_per_night = (50..700).to_a.sample
  @flat.number_of_guests = (1..5).to_a.sample
  @flat.save!
}
