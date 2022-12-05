puts "Cleaning database..."

Spot.destroy_all
User.destroy_all
Event.destroy_all
Category.destroy_all
Bookmark.destroy_all

#Category
file = File.open(Rails.root.join("app/assets/images/category/restaurant.png"))
restaurant = Category.create!(name: "Restaurants")
restaurant.photo.attach(io: file, filename: "photo.png", content_type: "image/jpeg")

file = File.open(Rails.root.join("app/assets/images/category/wine.png"))
bar = Category.create!(name: "Bars")
bar.photo.attach(io: file, filename: "photo.png", content_type: "image/jpeg")

file = File.open(Rails.root.join("app/assets/images/category/bunk-bed.png"))
hostel = Category.create!(name: "Hostels")
hostel.photo.attach(io: file, filename: "photo.png", content_type: "image/jpeg")

file = File.open(Rails.root.join("app/assets/images/category/handshake.png"))
volunteering = Category.create!(name: "Volunteering")
volunteering.photo.attach(io: file, filename: "photo.png", content_type: "image/jpeg")

file = File.open(Rails.root.join("app/assets/images/category/sign-post.png"))
tour = Category.create!(name: "Tours")
tour.photo.attach(io: file, filename: "photo.png", content_type: "image/jpeg")

file = File.open(Rails.root.join("app/assets/images/category/party-popper.png"))
club = Category.create!(name: "Clubs")
club.photo.attach(io: file, filename: "photo.png", content_type: "image/jpeg")


#User

file = File.open(Rails.root.join("db/seed/image/profil/chloe.jpg"))
chloe = User.create!(email: "chloe@gmail.com", password:"secret", name:"Chloe", last_name:"Lagneau", username:"Choloroquine", age:25)
chloe.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/profil/alexandra.jpeg"))
alexandra = User.create!(email: "alexandra@gmail.com", password:"secret", name:"Alexandra", last_name:"Courivaud", username: "oOo-Alexa-oOo", age:32)
alexandra.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/profil/paola.jpeg"))
paola = User.create!(email: "paola@gmail.com", password:"secret", name:"Paola", last_name:"Barbaud", username:"Paëla", age:21)
paola.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/profil/thea.jpeg"))
thea = User.create!(email: "thea@gmail.com", password:"secret", name:"Thea", last_name:"Chevalier", username:"Thea-la-voyageuse", age:31)
thea.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

#Spots

file = File.open(Rails.root.join("db/seed/image/spots/chifatiti.png"))
chifatiti = Spot.create!(name:"Chifa Titi" , location:"Javier Prado Este 1212, San Isidro", rating:4, category: restaurant)
chifatiti.photo.attach(io: file, filename: "photo.png", content_type: "image/png")

file = File.open(Rails.root.join("db/seed/image/spots/mercado28.jpeg"))
mercado28 = Spot.create!(name:"Mercado 28" , location:"Vasco Núñez de Balboa 755, Miraflores", rating:5, category: restaurant)
mercado28.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/cantarana.jpeg"))
cantarana = Spot.create!(name:"Canta Rana" , location:"Genova 101, Barranco", rating:4, category: restaurant)
cantarana.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/labom.jpeg"))
labom = Spot.create!(name:"Creperia La Bo'M" , location:"Av. Mariscal La Mar 770, Miraflores", rating:5, category: restaurant)
labom.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/pizzaraul.png"))
raul = Spot.create!(name:"Pizza Raul" , location:"Genova 115, Barranco 15063", rating:3, category: restaurant)
raul.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/greenfa.jpg"))
greenfalafel = Spot.create!(name:"Green Falafel" , location:"C. Schell 452, Miraflores", rating:5, category: restaurant)
greenfalafel.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/chakruna.jpg"))
chacruna = Spot.create!(name:"Chakruna" , location:"Ca. Gral. Borgoño Nº860, Barranco", rating:4, category: restaurant)
chacruna.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/sanblas.png"))
sanblas = Spot.create!(name:"Mercado San Blas" , location:"C. Amador Merino Reyna 589, San Isidro", rating:4, category: restaurant)
sanblas.photo.attach(io: file, filename: "photo.jpg", content_type: "image/png")

file = File.open(Rails.root.join("db/seed/image/spots/greenp.jpg"))
gp = Spot.create!(name:"Green Point Restaurants" , location:"Av. Simón Bolivar 1515, Pueblo Libre", rating:4, category: restaurant)
gp.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


#Events


culey_event = Event.create!(name: "Birthday diner", description: "To celebrate my 30th birthday, I invite you to my favorite food hall in Lima: Mercado 28! We can meet from 7:30pm for an aperitif and then we can each eat what we like!", event_date: "2022-12-15", spot: mercado28, creator: thea)
gin_event = Event.create!(name:"Christmas diner", description: "To celebrate Christmas, far from our entourage, I suggest that we meet to celebrate it together! La Bo'M is a great French restaurant with delicious pancakes, so for all the French (and others) in need of pancakes, don't hesitate to join us!", event_date:"2022-12-24", spot: labom, creator: alexandra)
gin_event2 = Event.create!(name:"Last 2022 lunch", description: "I really love gins and the Gin bar seems to be specialized in making some, do you want to join me ?", event_date:"2022-12-31", spot: cantarana, creator: paola)

#Bookmarks

bookmark1 = Bookmark.create!(user: chloe, event: culey_event)
bookmark2 = Bookmark.create!(user: thea, event: gin_event)
bookmark3 = Bookmark.create!(user: thea, event: gin_event2)

puts "... Super-mega-database-de-beau-gosse.final.final2.TRUEFINAL created"
