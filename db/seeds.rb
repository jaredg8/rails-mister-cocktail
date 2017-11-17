# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'faker'

25.times do
  cocktail = Cocktail.new({name:Faker::RockBand.name})
  url = "http://www.seriouseats.com/images/2015/04/20150406-cocktails-primary-vicky-wasik-1.jpg"
  cocktail.remote_photo_url = url
  cocktail.save
end

50.times do
  ingredient = Ingredient.create({name:Faker::Food.ingredient})
end



