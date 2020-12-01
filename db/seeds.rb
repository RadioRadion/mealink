# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(address: "34 Rue du Bon Gouda", email: "tony@gromail.com", password: "azertie")
cooker = Cooker.create!(address: "36 Rue des anciens pauvres", username: "PP", first_name: "Pablo", last_name: "Picassiette", email: "pp@gromail.com", password: "azertie")
hamburger = Meal.create!(typology: "plat", price: 9, stock: 8, cooker: cooker)
tiramisu = Meal.create!(typology: "dessert", price: 3, stock: 8, cooker: cooker)
order1 = Order.create!(user: user, cooker: cooker)
orderItem1 = OrderItem.create!(number: 1, meal: hamburger, order: order1)
orderItem2 = OrderItem.create!(number: 2, meal: tiramisu, order: order1)
note1 = Note.create!(user_id: user, meal: hamburger, rating: 4)
note2 = Note.create!(user_id: user, meal: tiramisu, rating: 5)
comment = Comment.create!(cooker: cooker, user: user, content: "ça change de la cuisine de ma femme")
