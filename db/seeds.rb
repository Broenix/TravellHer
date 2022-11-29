puts "Cleaning database..."
Spot.destroy_all
User.destroy_all
Event.destroy_all
Category.destroy_all

#Category

# file = File.open(Rails.root.join("db/seed/image/restaurant.jpg"))
restaurant = Category.create!(name: "Restaurants")
# restaurant.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# file = File.open(Rails.root.join("db/seed/image/bar.jpg"))
bar = Category.create!(name: "Bars")
# bar.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# file = File.open(Rails.root.join("db/seed/image/hostel.jpg"))
hostel = Category.create!(name: "Hostels")
# hostel.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


volunteering = Category.create!(name: "Volunteering")


tour = Category.create!(name: "Tours")


club = Category.create!(name: "Clubs")



#User

chloe = User.create!(email: "chloe@mail.com", password:"secret", name:"Chloe", last_name:"Lagneau", username:"Choloroquine", photo_url:"db/seed/image/profil/chloe.jpg", age:25)

#Spots

culey = Spot.create!(name:"Culey" , location:"Calle José Galvez 136 in front of Wong Balta in Miraflores downtown, Lima 00018 Peru", rating:3, category: restaurant)

#Events

pubevent = Event.create!(name: "Lets have a RDV at the Culey", description: "Lets get some shots at the Culey bar", event_date: "2023-01-12", spot: culey)
