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

Amenity.create!([{ name: 'BBQ' }, { name: 'Air-conditoning' }, { name: 'Pool' }, { name: 'Gym' }, { name: 'Stocked-kitchen' },
                 { name: 'Laundry' }])

Address.create!([{ postcode: 4564, suburb: 'Twin Waters', street_number: 5, street_name: 'Wivenhoe Place' }])
Address.create!([{ postcode: 4455, suburb: 'Roma', street_number: 19, street_name: 'Highly Road' }])
Address.create!([{ postcode: 4470, suburb: 'Charieville', street_number: 4, street_name: 'Dan Street' }])
Address.create!([{ postcode: 4350, suburb: 'Toowoomba', street_number: 30, street_name: 'Manning Street' }])
# Address.create!([{ postcode: 4564, suburb: 'Twin Waters', street_number: 5, street_name: 'Wivenhoe Place' }])
# Address.create!([{ postcode: 4564, suburb: 'Twin Waters', street_number: 5, street_name: 'Wivenhoe Place' }])
# Address.create!([{ postcode: 4564, suburb: 'Twin Waters', street_number: 5, street_name: 'Wivenhoe Place' }])
# Address.create!([{ postcode: 4564, suburb: 'Twin Waters', street_number: 5, street_name: 'Wivenhoe Place' }])
# Address.create!([{ postcode: 4564, suburb: 'Twin Waters', street_number: 5, street_name: 'Wivenhoe Place' }])
# Address.create!([{ postcode: 4564, suburb: 'Twin Waters', street_number: 5, street_name: 'Wivenhoe Place' }])
# Address.create!([{ postcode: 4564, suburb: 'Twin Waters', street_number: 5, street_name: 'Wivenhoe Place' }])
# Address.create!([{ postcode: 4564, suburb: 'Twin Waters', street_number: 5, street_name: 'Wivenhoe Place' }])

PropertyType.create!([{ name: 'House' }, { name: 'Town House' }, { name: 'Unit' }, { name: 'Campsite' }])

User.create!([{ email: '123@outlook.com', password: '123456', role: 1, first_name: 'Xin', last_name: 'Wang' }])
User.create!([{ email: '345@outlook.com', password: '123456', role: 1, first_name: 'Haily', last_name: 'Cheng' }])
User.create!([{ email: '678@outlook.com', password: '123456', role: 1, first_name: 'David', last_name: 'Wang' }])
User.create!([{ email: '234@outlook.com', password: '123456', role: 1, first_name: 'Joseph', last_name: 'In' }])
# User.create!([{ email: '12349@outlook.com', password: '123456', role: 1, first_name: 'Wendy', last_name: 'SA' }])
# User.create!([{ email: '12223@outlook.com', password: '123456', role: 1, first_name: 'Xindy', last_name: 'Xin' }])
# User.create!([{ email: '143223@outlook.com', password: '123456', role: 1, first_name: 'Cindy', last_name: 'Liu' }])
# User.create!([{ email: '9384@outlook.com', password: '123456', role: 1, first_name: 'Shane', last_name: 'Ho' }])
# User.create!([{ email: '3345@outlook.com', password: '123456', role: 1, first_name: 'Carol', last_name: 'Jo' }])
# User.create!([{ email: '233232@outlook.com', password: '123456', role: 1, first_name: 'Hailin', last_name: 'Vincent' }])
# User.create!([{ email: '1212@outlook.com', password: '123456', role: 1, first_name: 'Xue', last_name: 'White' }])
# User.create!([{ email: '2323@outlook.com', password: '123456', role: 1, first_name: 'Tomas', last_name: 'Car' }])

Property.create!([{ name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last,
                    owner: User.last, address: Address.second, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c1.jpg')), filename: 'c1.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last,
                    owner: User.last, address: Address.third, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c2.jpg')), filename: 'c2.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last,
                    owner: User.last, address: Address.first, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c3.jpg')), filename: 'c3.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last,
                    owner: User.last, address: Address.last, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c4.jpg')), filename: 'c4.jpg' } }])
# Property.create!([{ name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last,
#                     owner: User.last, address: Address.last, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c2.jpg')), filename: 'c2.jpg' } }])
# Property.create!([{ name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last,
#                     owner: User.last, address: Address.last, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c2.jpg')), filename: 'c2.jpg' } }])
# Property.create!([{ name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last,
#                     owner: User.last, address: Address.last, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c2.jpg')), filename: 'c2.jpg' } }])
# Property.create!([{ name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last,
#                     owner: User.last, address: Address.last, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c2.jpg')), filename: 'c2.jpg' } }])
# Property.create!([{ name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last,
#                     owner: User.last, address: Address.last, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c2.jpg')), filename: 'c2.jpg' } }])
# Property.create!([{ name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last,
#                     owner: User.last, address: Address.last, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c2.jpg')), filename: 'c2.jpg' } }])
# Property.create!([{ name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last,
#                     owner: User.last, address: Address.last, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c2.jpg')), filename: 'c2.jpg' } }])
# Property.create!([{ name: 'Loved place', description: 'Fully stocked', property_type: PropertyType.last,
#                     owner: User.last, address: Address.last, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c2.jpg')), filename: 'c2.jpg' } }])
