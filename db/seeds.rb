# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

user = User.create(email: "martin.louvard@gmail.com", password: "foobar", password_confirmation: "foobar")

30.times do 
    Article.create(title: Faker::Name.unique.name , content: Faker::ChuckNorris.fact, user_id: user.id)
end