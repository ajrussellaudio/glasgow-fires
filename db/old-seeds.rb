# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

NewsSource.delete_all
Fire.delete_all

thaiOrchid = Fire.create(
  building_name: "Thai Orchid (?)",
  street_address: "336 Argyle St",
  latitude: 55.8589498,
  longitude: -4.2620268,
  date: Date.new(2018, 8, 3)
)

thaiOrchid.news_sources.create([
  {
    publication: "Glasgow Live",
    headline: "Fire crews rush to city centre as smoke seen billowing from Argyle Street building",
    url: "https://www.glasgowlive.co.uk/news/glasgow-news/fire-crews-scene-smoke-seen-14988053"
  },
  {
    publication: "Evening Times",
    headline: "Popular Glasgow City Centre restaurant on fire",
    url: "http://www.eveningtimes.co.uk/news/16397507.popular-glasgow-city-centre-restaurant-on-fire/"
  }
  ])

stobhill = Fire.create(
  building_name: "Stobhill Hospital",
  street_address: "133 Balornock Rd",
  latitude: 55.8924115,
  longitude: -4.218182,
  date: Date.new(2018, 7, 31)
)

stobhill.news_sources.create([
  {
    publication: "Glasgow Live",
    headline: "Major fire breaks out at former Stobhill hospital in north Glasgow",
    url: "https://www.glasgowlive.co.uk/news/glasgow-news/major-fire-breaks-out-former-14975532"
  },
  {
    publication: "Daily Record",
    headline: "Two teenagers arrested after major Glasgow fire at derelict Stobhill Hospital",
    url: "https://www.dailyrecord.co.uk/news/scottish-news/two-teenagers-arrested-after-major-13029247"
  }
])

art_school = Fire.create(
  building_name: "Glasgow School of Art (Mackintosh building)",
  street_address: "167 Renfrew St",
  latitude: 55.866147,
  longitude: -4.2636933,
  date: Date.new(2018, 6, 15)
)

art_school.news_sources.create([
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

victorias = Fire.create(
  building_name: "Victoria's Nightclub",
  street_address: "98 Sauchiehall St",
  latitude: 55.8648109,
  longitude: -4.2563089,
  date: Date.new(2018, 3, 22)
)

victorias.news_sources.create([
  {
    publication: "The Scottish Sun",
    headline: "'DEVASTATED' Glasgow fire destroys Victoria’s Nightclub as gutted revellers pay tribute to beloved Sauchiehall Street venue",
    url: "https://www.thescottishsun.co.uk/news/scottish-news/2401996/glasgow-fire-victorias-nightclub-sauchiehall-street-destroyed/"
  },
  {
    publication: "Glasgow Live",
    headline: "Sauchiehall Street fire broke out in roof space above Victoria's Nightclub",
    url: "https://www.glasgowlive.co.uk/news/glasgow-news/sauchiehall-street-fire-broke-out-14443807"
  }
])
