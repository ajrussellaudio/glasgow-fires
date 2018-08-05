# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Source.delete_all
Fire.delete_all
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

art_school_2018_fire = art_school.fires.create(
  date: Date.new(2018, 6, 15)
)

art_school_2018_fire.sources.create([
  {
    publication: "BBC News",
    headline: "Glasgow fire: Art school's Mackintosh building extensively damaged",
    url: "https://www.bbc.co.uk/news/uk-scotland-glasgow-west-44504659"
  },
  {
    publication: "The Guardian",
    headline: "'Heartbreaking': fire guts Glasgow School of Art for second time",
    url: "https://www.theguardian.com/uk-news/2018/jun/16/firefighters-tackle-blaze-at-glasgow-school-of-art"
  }
])

art_school_2014_fire = art_school.fires.create(
  date: Date.new(2014, 5, 23),
  aftermath: "Some text here about the multi-million pound restoration project."
)

art_school_2014_fire.sources.create([
  {
    publication: "BBC News",
    headline: "Glasgow School of Art fire: Iconic library destroyed",
    url: "https://www.bbc.co.uk/news/uk-scotland-glasgow-west-27556659"
  }
])
