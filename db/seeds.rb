# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
    cities=City.create!(city_name: Faker::Nation.capital_city)
end

15.times do
    dogsitters=Dogsitter.create!(name: Faker::FunnyName.name, city_id: Random.rand(1..10))
end

25.times do
    dogs=Dog.create!(name: Faker::DcComics.hero, breed: Faker::Creature::Dog.breed, city_id: Random.rand(1..10))
end

50.times do
    strolls=Stroll.create!(dogsitter_id: Random.rand(1..30), dog_id: Random.rand(1..50))
    end 
