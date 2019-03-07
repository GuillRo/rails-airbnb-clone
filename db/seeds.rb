Booking.destroy_all
Review.destroy_all
FlatAmenity.destroy_all
Amenity.destroy_all
Flat.destroy_all
User.destroy_all
Profile.destroy_all

user_1 = User.create!(password: "123123", email: "john@wagon.be", first_name: "John", last_name: "Dupont", address: "62 rue du mans")
user_2 = User.create!(password: "123123", email: "Hector@wagon.be", first_name: "hector", last_name: "Bio", address: "12 rue de la quète")
user_3 = User.create!(password: "123123", email: "Helena@wagon.be", first_name: "Helena", last_name: "Macbook", address: "18 rue de la liberté")
user_4 = User.create!(password: "123123", email: "Josianne@wagon.be", first_name: "Josianne", last_name: "Jhonson", address: "17 chaussée de waterloo")
user_5 = User.create!(password: "123123", email: "Jhonny@wagon.be", first_name: "Jhonny", last_name: "Evian", address: "15 rue du matin")

user_1.create_profile(presentation: "Hi, I'm John. I love traveling!")

url_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1551784212/flat_1.jpg"
flat_1 = Flat.create!(title: "Beautiful city flat", address: "Paris, France", price: 45, description: "Agréable studio bien stitué", nbr_rooms: 3, nbr_beds: 2)
flat_1.remote_photo_url = url_1
flat_1.save

url_2 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1551784212/flat_2.jpg"
flat_2 = Flat.create!(title:"Find your paradise in Marseille", address: "1 boulevard de la Woluwe, Woluwe-Saint-Lambert, Belgique", price: 70, description: "Maison de maitre avec jardin", nbr_rooms: 9, nbr_beds: 10)
flat_2.remote_photo_url = url_2
flat_2.save

url_3 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1551784213/flat_3.jpg"
flat_3 = Flat.create!(title:"Endless views on the seaside", address: "Chaussée de Charleroi, Bruxelles, Belgique", price: 41, description: "Appartement moderne", nbr_rooms: 4, nbr_beds: 4)
flat_3.remote_photo_url = url_3
flat_3.save

url_4 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1551784212/flat_4.jpg"
flat_4 = Flat.create!(title: "Small cabin in the woods", address: "Kessales, Liège, Belgique", price: 39, description: "Beautiful appartment by the sea. You don't want to miss this!", nbr_rooms: 3, nbr_beds: 2)
flat_4.remote_photo_url = url_4
flat_4.save

url_5 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1551784213/flat_5.jpg"
flat_5 = Flat.create!(title: "Green dreams in the jungle ", address: "Oostende, Belgique", price: 55, description: "Super studio privatif", nbr_rooms: 2, nbr_beds: 2)
flat_5.remote_photo_url = url_5
flat_5.save

Booking.create!(date_begin: Date.new(2019,2,1), date_end: Date.new(2019,2,3) , status: "booked", user: user_1, flat: flat_3)
Booking.create!(date_begin: Date.new(2019,3,5), date_end: Date.new(2019,3,7) , status: "booked", user: user_2, flat: flat_4)
Booking.create!(date_begin: Date.new(2019,4,1), date_end: Date.new(2019,4,10) , status: "booked", user: user_3, flat: flat_1)
Booking.create!(date_begin: Date.new(2019,5,2), date_end: Date.new(2019,5,6) , status: "booked", user: user_3, flat: flat_1)
Booking.create!(date_begin: Date.new(2019,8,17), date_end: Date.new(2019,8,25) , status: "booked", user: user_4, flat: flat_5)
Booking.create!(date_begin: Date.new(2019,3,10), date_end: Date.new(2019,3,14) , status: "booked", user: user_5, flat: flat_2)

Review.create!(content: "Génial, super expérience", score: 4, user: user_1, flat: flat_3)
Review.create!(content: "Déçu par la propreté et la qualité du matelas", score: 1, user: user_2, flat: flat_1)
Review.create!(content: "Ideal pour un weekend en amoureux", score: 4, user: user_3, flat: flat_4)
Review.create!(content: "Expérience mitigé, le quartier est très bruyant", score: 2, user: user_5, flat: flat_5)
Review.create!(content: "Génial, Je recommande fortement", score: 4, user: user_4, flat: flat_3)

amen_1 = Amenity.create!(name: "WiFi")
amen_2 = Amenity.create!(name: "Lave linge")
amen_3 = Amenity.create!(name: "Cuisine")
amen_4 = Amenity.create!(name: "Bureau")
amen_5 = Amenity.create!(name: "Machine à laver")

FlatAmenity.create!(flat: flat_4, amenity: amen_1)
FlatAmenity.create!(flat: flat_4, amenity: amen_2)
FlatAmenity.create!(flat: flat_4, amenity: amen_3)
FlatAmenity.create!(flat: flat_3, amenity: amen_4)
FlatAmenity.create!(flat: flat_3, amenity: amen_5)



