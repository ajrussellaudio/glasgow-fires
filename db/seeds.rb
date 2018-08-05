# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Building.delete_all

art_school = Building.create(
  name: "Glasgow School of Art",
  address: "167 Renfrew St",
  latitude: 55.866147,
  longitude: -4.2636933,
  history: "A bit of text about the history of the Art School",
  wikipedia: "https://en.wikipedia.org/wiki/Glasgow_School_of_Art",
  category: 1
)

art_school.fires.create(
  date: Date.new(2018, 6, 15)
)
