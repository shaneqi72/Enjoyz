Property.destroy_all
Amenity.destroy_all
Booking.destroy_all
PropertyType.destroy_all
User.destroy_all
Address.destroy_all

Amenity.create!([{ name: 'BBQ' }, { name: 'Air-conditoning' }, { name: 'Pool' }, { name: 'Gym' }, { name: 'Stocked-kitchen' },
                 { name: 'Laundry' }])

addresses = [
  { postcode: 4564, suburb: 'Twin Waters', street_number: 5, street_name: 'Wivenhoe Place' },
  { postcode: 4455, suburb: 'Roma', street_number: 19, street_name: 'Highly Road' },
  { postcode: 4470, suburb: 'Charieville', street_number: 4, street_name: 'Dan Street' },
  { postcode: 4350, suburb: 'Toowoomba', street_number: 30, street_name: 'Church Street' },
  { postcode: 6716, suburb: 'Fortescue', street_number: 67, street_name: 'william Place' },
  { postcode: 6707, suburb: 'Exmouth', street_number: 34, street_name: 'DERRICK STREET' },
  { postcode: 3915, suburb: 'hastings', street_number: 12, street_name: 'Wivenhoe Place' },
  { postcode: 3871, suburb: 'Dollar', street_number: 22, street_name: 'Jenkins Street' },
  { postcode: 2680, suburb: 'Beelbngera', street_number: 55, street_name: 'Melanie Place' },
  { postcode: 5523, suburb: 'Clements Gap', street_number: 38, street_name: 'Fitzgibbon Crescent' },
  { postcode: 5540, suburb: 'Bungama', street_number: 66, street_name: 'Beacon Street' },
  { postcode: 5640, suburb: 'Hungo', street_number: 56, street_name: 'White Street' },
  { postcode: 5642, suburb: 'Websho', street_number: 21, street_name: 'Grey Street' }

]

property_types = [{ name: 'House' }, { name: 'Town House' }, { name: 'Unit' }, { name: 'Campsite' }]

users = [
  { email: '123@outlook.com', password: '123456', role: 1, first_name: 'Xin', last_name: 'Wang' },
  { email: '345@outlook.com', password: '123456', role: 1, first_name: 'Haily', last_name: 'Cheng' },
  { email: '678@outlook.com', password: '123456', role: 1, first_name: 'David', last_name: 'Wang' },
  { email: '234@outlook.com', password: '123456', role: 1, first_name: 'Joseph', last_name: 'In' },
  { email: '12349@outlook.com', password: '123456', role: 1, first_name: 'Wendy', last_name: 'SA' },
  { email: '12223@outlook.com', password: '123456', role: 1, first_name: 'Xindy', last_name: 'Xin' },
  { email: '143223@outlook.com', password: '123456', role: 1, first_name: 'Cindy', last_name: 'Liu' },
  { email: '9384@outlook.com', password: '123456', role: 1, first_name: 'Shane', last_name: 'Ho' },
  { email: '3345@outlook.com', password: '123456', role: 1, first_name: 'Carol', last_name: 'Jo' },
  { email: '233232@outlook.com', password: '123456', role: 1, first_name: 'Hailin', last_name: 'Vincent' },
  { email: '1212@outlook.com', password: '123456', role: 1, first_name: 'Xue', last_name: 'White' },
  { email: '2323@outlook.com', password: '123456', role: 1, first_name: 'Tomas', last_name: 'Car' }
]

addresses.map! { |address| Address.create!(address) }

property_types.map! { |t| PropertyType.create!(t) }

users.map! { |user| User.create!(user) }

Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: property_types[0],
                    owner: users[0], address: addresses[0], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c1.jpg')), filename: 'c1.jpg' } }])
Property.create!([{ name: 'Resort-style living', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: property_types[0],
                    owner: users[1], address: addresses[1], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c2.jpg')), filename: 'c2.jpg' } }])
Property.create!([{ name: 'Art Deco delight in a coveted locale', description: 'Infused with Art Deco charm, a peaceful lifestyle awaits in this beautifully presented solid brick, period style sanctuary with a wide street frontage, ideally located in a prime Caulfield North locale.', property_type: property_types[0],
                    owner: users[2], address: addresses[2], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c3.jpg')), filename: 'c3.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: property_types[0],
                    owner: users[3], address: addresses[3], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c4.jpg')), filename: 'c4.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: property_types[0],
                    owner: users[4], address: addresses[4], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c5.jpg')), filename: 'c5.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: property_types[0],
                    owner: users[5], address: addresses[5], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c6.jpg')), filename: 'c6.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: property_types[0],
                    owner: users[6], address: addresses[6], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c7.jpg')), filename: 'c7.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: property_types[0],
                    owner: users[7], address: addresses[7], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c8.jpg')), filename: 'c8.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: property_types[0],
                    owner: users[8], address: addresses[8], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c9.jpg')), filename: 'c9.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: property_types[0],
                    owner: users[9], address: addresses[9], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c10.jpg')), filename: 'c10.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: property_types[0],
                    owner: users[10], address: addresses[10], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c11.jpg')), filename: 'c11.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: property_types[0],
                    owner: users[11], address: addresses[11], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c12.jpg')), filename: 'c12.jpg' } }])
