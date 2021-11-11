# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Property.destroy_all
PropertyLocation.destroy_all
SuburbPostcode.destroy_all
PropertyType.destroy_all
Amenity.destroy_all
Profile.destroy_all
User.destroy_all



Amenity.create!([{name: 'BBQ'}, {name: 'Air-conditoning'}, {name: 'Pool'}, {name: 'Gym'}, {name: 'Stocked-kitchen'}, {name: 'Laundry'}])

PropertyType.create!([{name: 'House'}, {name: 'Town House'}, {name: 'Unit'}, {name: 'Campsite'}])

SuburbPostcode.create!([{postcode: 4564, suburb: 'Twin Waters', city: 'Sunshine Coast', state: 'QLD'}, {postcode: 800, suburb: 'Darwin', city: 'Darwin', state: 'NT'}, {postcode: 3350, suburb: 'Ballarat', city: 'Geelong', state: 'VIC'}])

User.create!([{email:'123@outlook.com', password:'123456'}, {email:'foo@outlook.com', password:'123456'}, {email:'vivian@outlook.com', password:'123456'}])

Profile.create!(user: User.first, first_name: 'Andrew', last_name: 'Goodwill', contact_number: 23232323)

PropertyLocation.create!([{street_number: 30, street_name: 'Hills street', suburb_postcode: SuburbPostcode.first, user: User.first}, {street_number: 28, street_name: 'Wivenhoe place', suburb_postcode: SuburbPostcode.second, user: User.second}, {street_number: 16, street_name: 'Manning street', suburb_postcode: SuburbPostcode.third, user: User.third}])

Property.create!([{name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.second, property_location: PropertyLocation.second, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, start_date: '2020-01-01', end_date: '2023-01-01', nightly_price: 50}, {name: 'Comfort Unit', description: 'Comfort Unit to stay', property_type: PropertyType.third, property_location: PropertyLocation.third, bedroom_count: 3, bed_count: 3, bathroom_count: 2, availability: true, start_date: '2020-01-01', end_date: '2023-01-01', nightly_price: 60},])

Booking.create!([{check_in_date: '2021-03-05', check_out_date: '2021-05-05', adult_count: 2, child_count: 0, traveller: User.first, host: User.second, property: Property.first}])