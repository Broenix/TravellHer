
puts "Cleaning database..."

Spot.destroy_all
User.destroy_all
Event.destroy_all
Category.destroy_all

#Category

file = File.open(Rails.root.join("db/seed/image/category/restaurant.jpg"))
restaurant = Category.create!(name: "Restaurants")
restaurant.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/category/bar.jpg"))
bar = Category.create!(name: "Bars")
bar.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/category/hostel.jpg"))
hostel = Category.create!(name: "Hostels")
hostel.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/category/volunteering.jpg"))
volunteering = Category.create!(name: "Volunteering")
volunteering.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/category/tour.jpg"))
tour = Category.create!(name: "Tours")
tour.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/category/club.jpg"))
club = Category.create!(name: "Clubs")
club.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


#User

file = File.open(Rails.root.join("db/seed/image/profil/chloe.jpg"))
chloe = User.create!(email: "chloe@mail.com", password:"secret", name:"Chloe", last_name:"Lagneau", username:"Choloroquine", age:25)
chloe.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/profil/alexandra.jpg"))
alexandra = User.create!(email: "alexandra@mail.com", password:"secret", name:"Alexandra", last_name:"Courivaud", username: "oOo-Alexa-oOo", age:32)
alexandra.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/profil/paola.jpg"))
paola = User.create!(email: "paola@mail.com", password:"secret", name:"Paola", last_name:"Barbaud", username:"Paëla", age:21)
paola.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/profil/thea.jpg"))
thea = User.create!(email: "thea@mail.com", password:"secret", name:"Thea", last_name:"Chevalier", username:"Thea-la-voyageuse", age:31)
thea.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

#Spots

file = File.open(Rails.root.join("db/seed/image/spots/restaurant1.jpg"))
culey = Spot.create!(name:"Culey" , location:"Calle José Galvez 136 in front of Wong Balta in Miraflores downtown, Lima 00018 Peru", rating:3, category: restaurant)
culey.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/restaurant2.jpg"))
laya = Spot.create!(name:"Laya" , location:"Av. Augusto Pérez Araníbar 2011, San Isidro 27, Peru", rating:1, category: restaurant)
laya.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/restaurant3.jpg"))
se = Spot.create!(name:"Se" , location:"Av. Mariscal La Mar 1285, Miraflores 15027, Peru", rating:4, category: restaurant)
se.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/restaurant4.jpg"))
gma = Spot.create!(name:"Gma" , location:"Av. Mariscal La Mar 770, Miraflores 15074, Peru", rating:5, category: restaurant)
gma.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/restaurant5.jpg"))
gepublic = Spot.create!(name:"Gepublic" , location:"Ca. Gral. Borgoño Nº860, Lima 15074, Peru", rating:3, category: restaurant)
gepublic.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/restaurant6.jpg"))
chiavel = Spot.create!(name:"Chiavel" , location:"C. Amador Merino Reyna 589, San Isidro 15046, Peruu", rating:5, category: restaurant)
chiavel.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/bar1.jpg"))
gin = Spot.create!(name:"Gin" , location:"Av. Simón Bolivar 1515, Pueblo Libre 15084, Peru", rating:2, category: bar)
gin.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/bar2.jpg"))
ongle = Spot.create!(name:"Ongle" , location:"C. Schell 452, Lima 15074, Peru", rating:5, category: bar)
ongle.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

#Events

culey_event = Event.create!(name: "Eat at Culey", description: "I'd love to try to eat in town and this restaurant is getting my attention. Would be nice to have someone to join me in the city.", event_date: "2023-01-12", spot: culey)
gin_event = Event.create!(name:"A Gin at the Gin bar", description: "I love gins and the Gin bar seems to be specialized in making some, do you want to join me ?", event_date:"2023-01-15", spot: gin)

puts "... Super-mega-database-de-beau-gosse.final.final2.TRUEFINAL created"
