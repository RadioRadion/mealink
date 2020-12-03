# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new(address: "5 rue Teulère, Bordeaux", email: "tony@gromail.com", password: "azertie", username: "PFiori")
file = URI.open('https://tel.img.pmdstatic.net/fit/https.3A.2F.2Fprd2-tel-epg-img.2Es3-eu-west-1.2Eamazonaws.2Ecom.2FproviderPerson.2Fa4d2c5f0980e06f80.2Ejpeg/300x300/quality/80/patrick-fiori.jpeg')
user.photo.attach(io: file, filename: 'fiori.jpg', content_type: 'image/jpg')
user.save!

user2 = User.new(address: "20 place Fernand Lafargue, Bordeaux", email: "romy@gromail.com", password: "azertie")
file = URI.open('https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2FFAC.2Fvar.2Ffemmeactuelle.2Fstorage.2Fimages.2Factu.2Fnews-actu.2Fgarou-arrete-de-chanter-40525.2F14592173-1-fre-FR.2Fgarou-sa-carriere-de-chanteur-compromise.2Ejpg/850x478/quality/90/crop-from/center/garou-sa-carriere-de-chanteur-compromise.jpeg')
user2.photo.attach(io: file, filename: 'garou.jpg', content_type: 'image/jpg')
user2.save!

cooker = Cooker.new(address: "32 rue Renière, bordeaux", username: "PP", first_name: "Pablo", last_name: "Picassiette", email: "pp@gromail.com", password: "azertie")
file = URI.open('https://sf2.bibamagazine.fr/wp-content/uploads/biba/2017/04/Des-chefs-italiens-donnent-leurs-conseils-sur-les-mets-mal-prepares-a-l-etranger.jpg')
cooker.photo.attach(io: file, filename: 'pablo.jpg', content_type: 'image/jpg')
cooker.save!

cooker2 = Cooker.new(address: "20 rue Bouquière, bordeaux", username: "MJ", first_name: "Mi", last_name: "Jean", email: "mj@gromail.com", password: "azertie")
file = URI.open('https://lvdneng.rosselcdn.net/sites/default/files/dpistyles_v2/ena_16_9_extra_big/2019/07/02/node_607854/40383836/public/2019/07/02/B9720135260Z.1_20190702154509_000%2BGL8DVQFEP.1-0.jpg?itok=OJ-6AMt_1562075374')
cooker2.photo.attach(io: file, filename: 'romy.jpg', content_type: 'image/jpg')
cooker2.save!

salade_choux = Meal.new(name: "Salade de choux", typology: "starter", price: 2, stock: 8, cooker: cooker)
file = URI.open('https://images.anaca3.com/wp-content/uploads/2018/04/la-salade-de-chou-blanc-fait-elle-maigrir-702x336.jpg')
salade_choux.photo.attach(io: file, filename: 'salade.jpg', content_type: 'image/jpg')
salade_choux.save!


dahl_lentilles = Meal.new(name: "Dahl de lentilles", typology: "starter", price: 2, stock: 8, cooker: cooker)
file = URI.open('https://cuisine-addict.com/wp-content/uploads/2019/02/recette-dahl-lentilles.jpg')
dahl_lentilles.photo.attach(io: file, filename: 'dahl.jpg', content_type: 'image/jpg')
dahl_lentilles.save!


hamburger = Meal.new(name: "Hamburger", typology: "main_course", price: 9, stock: 8, cooker: cooker)
file = URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2019/02/3e27345f-9e1e-45bb-9e5f-906f0abb2870/1200x680_gettyimages-922684138.jpg')
hamburger.photo.attach(io: file, filename: 'hamburger.jpg', content_type: 'image/jpg')
hamburger.save!


tiramisu = Meal.new(name: "Tiramisu", typology: "dessert", price: 3, stock: 8, cooker: cooker)
file = URI.open('https://i1.wp.com/freethepickle.fr/wp-content/uploads/2019/05/Tiramisu-5-of-6.jpg?fit=3979%2C2984&ssl=1')
tiramisu.photo.attach(io: file, filename: 'tiramisu.jpg', content_type: 'image/jpg')
tiramisu.save!


order1 = Order.create!(user: user, cooker: cooker, statut: "paid")
orderItem1 = OrderItem.create!(number: 1, meal: hamburger, order: order1)
orderItem2 = OrderItem.create!(number: 2, meal: tiramisu, order: order1)
note1 = Note.create!(user_id: user, meal: hamburger, rating: 4)
note2 = Note.create!(user_id: user, meal: tiramisu, rating: 5)
comment = Comment.create!(cooker: cooker, user: user, content: "ça change de la cuisine de ma femme")
