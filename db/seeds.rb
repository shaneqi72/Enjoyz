# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Property.destroy_all
Amenity.destroy_all
Booking.destroy_all
PropertyType.destroy_all
User.destroy_all
Address.destroy_all



Amenity.create!([{name: 'BBQ'}, {name: 'Air-conditoning'}, {name: 'Pool'}, {name: 'Gym'}, {name: 'Stocked-kitchen'}, {name: 'Laundry'}])

Address.create!([{postcode: 4564, suburb: 'Twin Waters', street_number: 5, street_name: 'Wivenhoe Place'}])

PropertyType.create!([{name: 'House'}, {name: 'Town House'}, {name: 'Unit'}, {name: 'Campsite'}])

User.create!([{email:'123@outlook.com', password:'123456', role: 1, first_name: 'Xin', last_name: 'Wang'}])

Property.create!([{name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last, owner: User.last, address: Address.last, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50}])

Booking.create!([{check_in_date: '2021-03-05', check_out_date: '2021-05-05', adult_count: 2, child_count: 0, traveller: User.first, property: Property.first}])