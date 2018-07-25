# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  Categorie.create(name: Faker::Color.color_name)

end

5.times do
  a = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email)
  Article.create(title: Faker::Movie.quote, content: Faker::StarWars.quote, user_id: a.id, categorie_id: 1)
 
  
end

5.times do
  a = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,email: Faker::Internet.email)
  Article.create(title: Faker::Movie.quote, content: Faker::StarWars.quote, user_id: a.id, categorie_id: 2)
 
end



5.times do
  Comentaire.create(content: Faker::Beer.name, article_id: 1, user_id:1)

end

5.times do
  Comentaire.create(content: Faker::Beer.name, article_id: 3, user_id:2)

end

5.times do
  Comentaire.create(content: Faker::Beer.name, article_id: 4, user_id:6)

end

5.times do
  Like.create(article_id: 4, user_id:6)

end
5.times do
  Like.create(article_id: 2, user_id:3)

end
5.times do
  Like.create(article_id: 5, user_id:9)

end
