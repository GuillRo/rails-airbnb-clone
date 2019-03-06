Booking.destroy_all
Review.destroy_all
FlatAmenity.destroy_all
Amenity.destroy_all
Flat.destroy_all
User.destroy_all

User.create(email: "john@wagon.be", first_name: "John", last_name: "Dupont", address: "62 rue du mans")
User.create(email: "Hector@wagon.be", first_name: "hector", last_name: "Bio", address: "12 rue de la quète")
User.create(email: "Helena@wagon.be", first_name: "Helena", last_name: "Macbook", address: "18 rue de la liberté")
User.create(email: "Josianne@wagon.be", first_name: "Josianne", last_name: "Jhonson", address: "17 chaussée de waterloo")
User.create(email: "Jhonny@wagon.be", first_name: "Jhonny", last_name: "Evian", address: "15 rue du matin")

# Flat.create(address: "15 avenue maison", price: 45, description: "Agreablé studio bien stitué", nbr_rooms: 3, nbr_beds: 2)
# Flat.create(address: "1 boulevard de la woluwe", price: 70, description: "Maison de maitre avec jardin", nbr_rooms: 9, nbr_beds: 10)
# Flat.create(address: "223 chaussée de charleroi", price: 41, description: "Appartement moderne", nbr_rooms: 4, nbr_beds: 4)
# Flat.create(address: "23 rue de linkebeek", price: 39, description: "", nbr_rooms: 3, nbr_beds: 2)
# Flat.create(address: "13 avenue du succes", price: 55, description: "Super studio privatif", nbr_rooms: 2, nbr_beds: 2)

url_1 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1551784212/flat_1.jpg"
flat_1 = Flat.create(latitude: 50, longitude: 51, title: "Beautiful city flat", address: "15 Avenue Maison, Paris, France", price: 45, description: "Agréable studio bien stitué", nbr_rooms: 3, nbr_beds: 2)
flat_1.remote_photo_url = url_1
flat_1.save

url_2 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1551784212/flat_2.jpg"
flat_2 = Flat.create(latitude: 53, longitude: 52, title:"Find your paradise in Marseille", address: "1 boulevard de la Woluwe, Woluwe-Saint-Lambert, Belgique", price: 70, description: "Maison de maitre avec jardin", nbr_rooms: 9, nbr_beds: 10)
flat_2.remote_photo_url = url_2
flat_2.save

url_3 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1551784213/flat_3.jpg"
flat_3 = Flat.create(latitude: 49, longitude: 50, title:"Endless views on the seaside", address: "223 chaussée de Charleroi, Bruxelles, Belgique", price: 41, description: "Appartement moderne", nbr_rooms: 4, nbr_beds: 4)
flat_3.remote_photo_url = url_3
flat_3.save

url_4 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1551784212/flat_4.jpg"
flat_4 = Flat.create(latitude: 55, longitude: 51, title: "Small cabin in the woods", address: "23 rue de Linkebeek, Liège, Belgique", price: 39, description: "Beautiful appartment by the sea. You don't want to miss this!", nbr_rooms: 3, nbr_beds: 2)
flat_4.remote_photo_url = url_4
flat_4.save

url_5 = "https://res.cloudinary.com/dux1stkfq/image/upload/v1551784213/flat_5.jpg"
flat_5 = Flat.create(latitude: 50, longitude: 46, title: "Green dreams in the jungle ", address: "13 avenue du succès, Bruxelles, Belgique", price: 55, description: "Super studio privatif", nbr_rooms: 2, nbr_beds: 2)
flat_5.remote_photo_url = url_5
flat_5.save

Booking.create(date_begin: Date.new(2019,2,1), date_end: Date.new(2019,2,3) , status: "booked", user_id: 1, flat_id: 3)
Booking.create(date_begin: Date.new(2019,3,5), date_end: Date.new(2019,3,7) , status: "booked", user_id: 2, flat_id: 1)
Booking.create(date_begin: Date.new(2019,4,1), date_end: Date.new(2019,4,10) , status: "booked", user_id: 4, flat_id: 4)
Booking.create(date_begin: Date.new(2019,8,17), date_end: Date.new(2019,8,25) , status: "booked", user_id: 3, flat_id: 5)
Booking.create(date_begin: Date.new(2019,3,10), date_end: Date.new(2019,3,14) , status: "booked", user_id: 5, flat_id: 2)

Review.create(content: "Génial, super expérience", score: 4, user_id: 2, flat_id:   )
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
