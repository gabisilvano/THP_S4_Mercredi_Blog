# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email)
  Article.create(title: Faker::Movie.quote, content: Faker::StarWars.quote)
  #b.update(user_id: a.id)
 
end

5.times do
Categorie.create(name: Faker::Color.color_name)
#b.update(categorie_id: c.id)
end

15.times do
Comentaire.create(content: Faker::Beer.name)
#b.update(categorie_id: c.id)
end
