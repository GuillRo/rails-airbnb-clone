# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "john@wagon.be", first_name: "John", last_name: "Dupont", adress: "62 rue du mans")
User.create(email: "Hector@wagon.be", first_name: "hector", last_name: "Bio", adress: "12 rue de la quète")
User.create(email: "Helena@wagon.be", first_name: "Helena", last_name: "Macbook", adress: "18 rue de la liberté")
User.create(email: "Josianne@wagon.be", first_name: "Josianne", last_name: "Jhonson", adress: "17 chaussée de waterloo")
User.create(email: "Jhonny@wagon.be", first_name: "Jhonny", last_name: "Evian", adress: "15 rue du matin")

Flat.create(address: "15 avenue maison", price: 45, description: "Agreablé studio bien stitué", nbr_rooms: 3, nbr_beds: 2)
Flat.create(address: "1 boulevard de la woluwe", price: 70, description: "Maison de maitre avec jardin", nbr_rooms: 9, nbr_beds: 10)
Flat.create(address: "223 chaussée de charleroi", price: 41, description: "Appartement moderne", nbr_rooms: 4, nbr_beds: 4)
Flat.create(address: "23 rue de linkebeek", price: 39, description: "", nbr_rooms: 3, nbr_beds: 2)
Flat.create(address: "13 avenue du succes", price: 55, description: "Super studio privatif", nbr_rooms: 2, nbr_beds: 2)

Booking.create(date_begin: Date.new(2019,2,1), date_end: Date.new(2019,2,3) , status: "booked", user_id: 1, flat_id: 3)
Booking.create(date_begin: Date.new(2019,3,5), date_end: Date.new(2019,3,7) , status: "booked", user_id: 2, flat_id: 1)
Booking.create(date_begin: Date.new(2019,4,1), date_end: Date.new(2019,4,10) , status: "booked", user_id: 4, flat_id: 4)
Booking.create(date_begin: Date.new(2019,8,17), date_end: Date.new(2019,8,25) , status: "booked", user_id: 3, flat_id: 5)
Booking.create(date_begin: Date.new(2019,3,10), date_end: Date.new(2019,3,14) , status: "booked", user_id: 5, flat_id: 2)

Review.create(content: "Génial, super expérience", score: 4, user_id: 2, flat_id: 3)
Review.create(content: "Déçu par la propreté et la qualité du matelas", score: 1, user_id: 1, flat_id: 1)
Review.create(content: "Ideal pour un weekend en amoureux", score: 4, user_id: 5, flat_id: 4)
Review.create(content: "Expérience mitigé, le quartier est très bruyant", score: 2, user_id: 5, flat_id: 5)
Review.create(content: "Génial, Je recommande fortement", score: 5, user_id: 4, flat_id: 3)

FlatAmenity.create(flat_id: 4, amenity_id: 2)
FlatAmenity.create(flat_id: 4, amenity_id: 5)
FlatAmenity.create(flat_id: 4, amenity_id: 3)
FlatAmenity.create(flat_id: 3, amenity_id: 1)
FlatAmenity.create(flat_id: 3, amenity_id: 2)


Amenity.create(name: "WiFi")
Amenity.create(name: "Lave linge")
Amenity.create(name: "Cuisine")
Amenity.create(name: "Bureau")
Amenity.create(name: "Machine à laver")


