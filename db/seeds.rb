# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

fires = [
  {
    building_name: "Thai Orchid (?)",
    street_address: "336 Argyle St",
    latitude: 55.8589498,
    longitude: -4.2620268,
    date: Date.new(2018, 8, 3)
  },
  {
    building_name: "Stobhill Hospital",
    street_address: "133 Balornock Rd",
    latitude: 55.8924115,
    longitude: -4.218182,
    date: Date.new(2018, 7, 31)
  }
]

Fire.create(fires)
