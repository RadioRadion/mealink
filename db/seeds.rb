# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(address: "5 rue Teulère, Bordeaux", email: "tony@gromail.com", password: "azertie")
cooker = Cooker.create!(address: "32 rue Renière, bordeaux", username: "PP", first_name: "Pablo", last_name: "Picassiette", email: "pp@gromail.com", password: "azertie")
cooker2 = Cooker.create!(address: "20 rue Bouquière, bordeaux", username: "MJ", first_name: "Mi", last_name: "Jean", email: "mj@gromail.com", password: "azertie")
salade_choux = Meal.create!(name: "Salade de choux", typology: "starter", price: 2, stock: 8, cooker: cooker)
dahl_lentilles = Meal.create!(name: "Dahl de lentilles", typology: "starter", price: 2, stock: 8, cooker: cooker)
hamburger = Meal.create!(name: "Hamburger", typology: "main_course", price: 9, stock: 8, cooker: cooker)
tiramisu = Meal.create!(name: "Tiramisu", typology: "dessert", price: 3, stock: 8, cooker: cooker)
order1 = Order.create!(user: user, cooker: cooker)
orderItem1 = OrderItem.create!(number: 1, meal: hamburger, order: order1)
orderItem2 = OrderItem.create!(number: 2, meal: tiramisu, order: order1)
note1 = Note.create!(user_id: user, meal: hamburger, rating: 4)
note2 = Note.create!(user_id: user, meal: tiramisu, rating: 5)
comment = Comment.create!(cooker: cooker, user: user, content: "ça change de la cuisine de ma femme")
