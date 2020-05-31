# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Aaron Salud", password: "scrapers2016")
User.create(username: "John Wick", password: "password")
User.create(username: "Robert Mccall", password: "scrapers2016")

Message.create(body: "Hi my name is Aaron", user: User.find(1))
Message.create(body: "Hi my name is John", user: User.find(2))
Message.create(body: "Hi my name is Robert", user: User.find(3))
