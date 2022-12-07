puts "Cleaning database..."

Message.destroy_all
Chatroom.destroy_all
Event.destroy_all
Review.destroy_all
Spot.destroy_all
Category.destroy_all
Bookmark.destroy_all
User.destroy_all

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
chloe = User.create!(email: "chloe@gmail.com", password:"secret", name:"Chloe", last_name:"Lagneau", username:"ChloeL", age:25)
chloe.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/profil/alexandra.jpeg"))
alexandra = User.create!(email: "alexandra@gmail.com", password:"secret", name:"Alexandra", last_name:"Courivaud", username: "AlexandraC", age:32)
alexandra.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/profil/paola.jpeg"))
paola = User.create!(email: "paola@gmail.com", password:"secret", name:"Paola", last_name:"Barbaud", username:"PaolaB", age:21)
paola.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/profil/thea.jpeg"))
thea = User.create!(email: "thea@gmail.com", password:"secret", name:"Thea", last_name:"Chevalier", username:"TheaC", age:31)
thea.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/profil/angela.jpg"))
angela = User.create!(email: "angela@gmail.com", password:"secret", name:"Angela", last_name:"Ramos", username:"angelaramos", age:31)
angela.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")

file = File.open(Rails.root.join("db/seed/image/profil/lucia.png"))
lucia = User.create!(email: "lucia@gmail.com", password:"secret", name:"Lucia", last_name:"Ramos", username:"angelaramos", age:31)
lucia.photo.attach(io: file, filename: "photo.jpg", content_type: "image/png")

#Spots

file = File.open(Rails.root.join("db/seed/image/spots/chifatiti.png"))
chifatiti = Spot.create!(name:"Chifa Titi" , location:"Javier Prado Este 1212, San Isidro, Peru", rating:4, category: restaurant, description: "Whenever you ask a Limeño for a favorite Chifa restaurant, most will direct you to this well-established restaurant that exemplifies the Chinese influence on Peruvian cuisine.")
chifatiti.photo.attach(io: file, filename: "photo.png", content_type: "image/png")


file = File.open(Rails.root.join("db/seed/image/spots/cusco.jpeg"))
cuzcotour = Spot.create!(name:"Cuzco Tour" , location:"Av. de la Cultura A-9, Cusco 08003, Peru", rating:4, category: tour, description: "Authentical moments to discover the real Peruvian culture")
cuzcotour.photo.attach(io: file, filename: "photo.png", content_type: "image/jpeg")


file = File.open(Rails.root.join("db/seed/image/spots/mercado28.jpeg"))
mercado28 = Spot.create!(name:"Mercado 28" , location:"Vasco Núñez de Balboa 755, Miraflores, Peru", rating:5, category: restaurant, description: "Mercado 28 is the first gastronomic market in Peru, where people not only go to eat, but they come to 'do the market', browse the stalls and get lost among new aromas and flavors.")
mercado28.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/cantarana.jpeg"))
cantarana = Spot.create!(name:"Canta Rana" , location:"Genova 101, Barranco, Peru", rating:3, category: restaurant, description: "The menu is long and varied, from rice to seafood, passing by the causa. This is the place to go to taste the famous Peruvian ceviche!")
cantarana.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/labom.jpeg"))
labom = Spot.create!(name:"Creperia La Bo'M" , location:"Av. Mariscal La Mar 770, Miraflores, Peru", rating:2, category: restaurant, description: "Located in the very authentic neighborhood of San Blas, this creperie held by French people has not finished surprising you with flavors inspired by the world cuisine.")
labom.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/pizzaraul.png"))
raul = Spot.create!(name:"Pizza Raul" , location:"Genova 115, Barranco 15063, Peru", rating:5, category: restaurant, description: "The best of the traditional pizzas at a very low price. Raul will welcome you in his restaurant with a soccer atmosphere.")
raul.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/greenfa.jpg"))
greenfalafel = Spot.create!(name:"Green Falafel" , location:"C. Schell 452, Miraflores, Peru", rating:4, category: restaurant, description: "The best falafels in Peru are here! Prepared right before your eyes, they are crispy and super soft inside. The restaurant is located in the San Blas market and is run by a family.")
greenfalafel.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/chakruna.jpg"))
chacruna = Spot.create!(name:"Chakruna" , location:"Ca. Gral. Borgoño Nº860, Barranco, Peru", rating:5, category: restaurant, description:"The best burgers in the capital are here! In a golden oven bun, with a wide variety of toppings, you won't be disappointed!")
chacruna.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

file = File.open(Rails.root.join("db/seed/image/spots/sanblas.png"))
sanblas = Spot.create!(name:"Mercado San Blas" , location:"C. Amador Merino Reyna 589, San Isidro, Peru", rating:4, category: restaurant, description:"The San Blas market is the best place to come for lunch. Many restaurants are present and you can taste a lot of different cuisines.")
sanblas.photo.attach(io: file, filename: "photo.jpg", content_type: "image/png")

file = File.open(Rails.root.join("db/seed/image/spots/greenp.png"))
gp = Spot.create!(name:"Green Point" , location:"Av. Simón Bolivar 1515, Pueblo Libre, Peru", rating:5, category: restaurant, description:"The best falafels in Peru are here! Prepared right before your eyes, they are crispy and super soft inside. The restaurant is located in the San Blas market and is run by a family.")
gp.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


#Events

file = File.open(Rails.root.join("db/seed/image/events/birthday.jpeg"))
bd = Event.create!(name:"Birthday diner", description: "To celebrate my 30th birthday, I invite you to my favorite food hall in Lima: Mercado 28! We can meet from 7:30pm for an aperitif and then we can each eat what we like!", event_date: "2022-12-15 18:30", spot: mercado28, user: thea)
bd.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
Chatroom.create!(name: "Birthday diner", event: bd)

file = File.open(Rails.root.join("db/seed/image/events/christmas.jpg"))
christmas = Event.create!(name:"Christmas diner", description: "To celebrate Christmas, far from our entourage, I suggest that we meet to celebrate it together! La Bo'M is a great French restaurant with delicious pancakes, so for all the French (and others) in need of pancakes, don't hesitate to join us!", event_date:"2022-12-24 19:00", spot: labom, user: alexandra)
christmas.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
Chatroom.create!(name: "Christmas diner", event: christmas)

file = File.open(Rails.root.join("db/seed/image/events/newyear.jpeg"))
newyear = Event.create!(name:"Last 2022 lunch", description: "I really love gins and the Gin bar seems to be specialized in making some, do you want to join me ?", event_date:"2022-12-31 12:30", spot: greenfalafel, user: paola)
newyear.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
Chatroom.create!(name: "Last 2022 lunch", event: newyear)

file = File.open(Rails.root.join("db/seed/image/events/ceviche.jpg"))
food = Event.create!(name:"Tasting best ceviche", description: "I propose you to taste the best ceviche of Lima, a must-try dish of the country! I recommend 100% this restaurant that offers affordable dishes, high quality and in one of the most pleasant and safest neighborhoods of Barranco! We can meet at 12am for lunch! I hope to see many of you 👌🏻", event_date: "2023-01-17 12:00", spot: cantarana, user: lucia)
food.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
Chatroom.create!(name: "Tasting best ceviche", event: food)

file = File.open(Rails.root.join("db/seed/image/events/machu.jpg"))
machu = Event.create!(name:"Machu Pichu Tour", description: "I go to Machu Pichu on 2023-01-30 with the agency CuzcoTours.
  It proposes a departure at 3 am and return the next day. They still have a place available and a ticket for the entrance.
  Good price and team at the top and benevolent!", event_date: "2023-01-17 03:00", spot: cuzcotour, user: angela)
machu.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpg")
Chatroom.create!(name: "Machu Pichu Tour", event: machu)

#Bookmarks

bookmark1 = Bookmark.create!(user: paola, event: bd)
bookmark2 = Bookmark.create!(user: alexandra, event: christmas)
bookmark3 = Bookmark.create!(user: thea, event: newyear)

#Reviews

review1 = Review.create!(comment:"Wow, I had a great time, this restaurant is just amazing. I recommend it 100%", rating:5, spot: mercado28, user:thea )
review2 = Review.create!(comment:"This restaurant is a change from the usual, the Chinese influences made us travel. ", rating:4, spot: chifatiti, user:paola )
review3 = Review.create!(comment:"The food is very good, but the hygiene of the place leaves something to be desired. ", rating:3, spot: cantarana, user:alexandra )
review4 = Review.create!(comment:"I'm French, I missed the local cuisine, but it was just awful. I don't recommend it, don't go there. ", rating:2, spot: labom, user:thea )
review5 = Review.create!(comment:"Am I in Peru or Italy? The pizzas are just crazy. If you're not afraid of peperonni and guanciale. This is the place to be. ", rating:5, spot: raul, user:paola )
review6 = Review.create!(comment:"Very good family restaurant, affordable and especially veggie. ", rating:4, spot: greenfalafel, user:alexandra )
review7 = Review.create!(comment:"Really better than McDonald's !!!", rating:5, spot: chacruna, user:thea )
review8 = Review.create!(comment:"This typical foodhall represents perfectly the South American culture, I recommend it. ", rating:4, spot: sanblas, user:paola )
review9 = Review.create!(comment:"Good value for money. ", rating:5, spot: gp, user:thea )
review10 = Review.create!(comment:"The owner is friendly and the food is healthly", rating:5, spot: mercado28, user:alexandra )
review11 = Review.create!(comment:"Chinese food in Lima, what a surprise !!!!", rating:4, spot: chifatiti, user:alexandra )
review12 = Review.create!(comment:"The food is correct, but the employees don't smile at all. Totally skipable", rating:3, spot: cantarana, user:thea )
review13 = Review.create!(comment:"don't go there. ", rating:2, spot: labom, user:paola )
review14 = Review.create!(comment:"If you want good pizza in Lima, I suggest the reina!", rating:5, spot: raul, user:thea )
review15 = Review.create!(comment:"The owner is very kind, good spot for local food!", rating:4, spot: greenfalafel, user:thea )
review16 = Review.create!(comment:"Good burgers, the french fries are AWESOME!!! thanks Manuela, the lovely waitress", rating:5, spot: chacruna, user:alexandra )
review17 = Review.create!(comment:"You must eat the speciality of the restaurant, the ceviche is amazing! ", rating:4, spot: sanblas, user:thea )
review18 = Review.create!(comment:"Nice restaurant, safe place.", rating:5, spot: gp, user:paola )
review19 = Review.create!(comment:"You must go there if you visit Lima!", rating:5, spot: mercado28, user:paola )
review20 = Review.create!(comment:"I like the dessert, but the plate was dirty...", rating:3, spot: cantarana, user:paola )
review21 = Review.create!(comment:"The owner is really oppresing, not a place to be in Lima ", rating:2, spot: labom, user:alexandra )

review22 = Review.create!(comment:"Good restaurant, I love the local food !", rating:5, spot: mercado28, user:thea )
review23 = Review.create!(comment:"Gastronomical peruvian food, good spot.", rating:5, spot: mercado28, user:alexandra )
review24 = Review.create!(comment:"You must go there !!!!", rating:5, spot: mercado28, user:thea )
review25 = Review.create!(comment:"나는 음식을 사랑", rating:5, spot: mercado28, user:thea )
review26 = Review.create!(comment:"Best spot in town, safe place and healthly food", rating:5, spot: gp, user:alexandra )
review27 = Review.create!(comment:"Marvellous !!!", rating:5, spot: gp, user:thea )
review28 = Review.create!(comment:"I love the vermicelli, the soy, the sweet and sour sauce, oh my god, it's a delight", rating:4, spot: chifatiti, user:alexandra )
review29 = Review.create!(comment:"For veggie, or not, good restaurant! ", rating:4, spot: greenfalafel, user:thea )


puts "... Super-mega-database-de-beau-gosse.final.final2.TRUEFINAL .TRUTRUTRUTRUTRUEFINAL.ULTIMATEFINAL created"
