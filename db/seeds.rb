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
Address.create!([{ postcode: 4350, suburb: 'Toowoomba', street_number: 30, street_name: 'Church Street' }])
Address.create!([{ postcode: 6716, suburb: 'Fortescue', street_number: 67, street_name: 'william Place' }])
Address.create!([{ postcode: 6707, suburb: 'Exmouth', street_number: 34, street_name: 'DERRICK STREET' }])
Address.create!([{ postcode: 3915, suburb: 'hastings', street_number: 12, street_name: 'Wivenhoe Place' }])
Address.create!([{ postcode: 3871, suburb: 'Dollar', street_number: 22, street_name: 'Jenkins Street' }])
Address.create!([{ postcode: 2680, suburb: 'Beelbngera', street_number: 55, street_name: 'Melanie Place' }])
Address.create!([{ postcode: 2675, suburb: 'hillston', street_number: 9, street_name: 'Heidelberg Road' }])
Address.create!([{ postcode: 5523, suburb: 'Clements Gap', street_number: 38, street_name: 'Fitzgibbon Crescent' }])
Address.create!([{ postcode: 5540, suburb: 'Bungama', street_number: 66, street_name: 'Beacon Street' }])

PropertyType.create!([{ name: 'House' }, { name: 'Town House' }, { name: 'Unit' }, { name: 'Campsite' }])

User.create!([{ email: '123@outlook.com', password: '123456', role: 1, first_name: 'Xin', last_name: 'Wang' }])
User.create!([{ email: '345@outlook.com', password: '123456', role: 1, first_name: 'Haily', last_name: 'Cheng' }])
User.create!([{ email: '678@outlook.com', password: '123456', role: 1, first_name: 'David', last_name: 'Wang' }])
User.create!([{ email: '234@outlook.com', password: '123456', role: 1, first_name: 'Joseph', last_name: 'In' }])
User.create!([{ email: '12349@outlook.com', password: '123456', role: 1, first_name: 'Wendy', last_name: 'SA' }])
User.create!([{ email: '12223@outlook.com', password: '123456', role: 1, first_name: 'Xindy', last_name: 'Xin' }])
User.create!([{ email: '143223@outlook.com', password: '123456', role: 1, first_name: 'Cindy', last_name: 'Liu' }])
User.create!([{ email: '9384@outlook.com', password: '123456', role: 1, first_name: 'Shane', last_name: 'Ho' }])
User.create!([{ email: '3345@outlook.com', password: '123456', role: 1, first_name: 'Carol', last_name: 'Jo' }])
User.create!([{ email: '233232@outlook.com', password: '123456', role: 1, first_name: 'Hailin', last_name: 'Vincent' }])
User.create!([{ email: '1212@outlook.com', password: '123456', role: 1, first_name: 'Xue', last_name: 'White' }])
User.create!([{ email: '2323@outlook.com', password: '123456', role: 1, first_name: 'Tomas', last_name: 'Car' }])

Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: PropertyType.first.name,
                    owner: User.first, address: Address.first, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c1.jpg')), filename: 'c1.jpg' } }])
Property.create!([{ name: 'Resort-style living', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: PropertyType.first.name,
                    owner: User.all[1], address: Address.all[1], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c2.jpg')), filename: 'c2.jpg' } }])
Property.create!([{ name: 'Art Deco delight in a coveted locale', description: 'Infused with Art Deco charm, a peaceful lifestyle awaits in this beautifully presented solid brick, period style sanctuary with a wide street frontage, ideally located in a prime Caulfield North locale.', property_type: PropertyType.first.name,
                    owner: User.all[2], address: Address.all[2], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c3.jpg')), filename: 'c3.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: PropertyType.first.name,
                    owner: User.all[3], address: Address.all[3], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c4.jpg')), filename: 'c4.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: PropertyType.first.name,
                    owner: User.all[4], address: Address.all[4], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c5.jpg')), filename: 'c5.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: PropertyType.first.name,
                    owner: User.all[5], address: Address.all[5], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c6.jpg')), filename: 'c6.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: PropertyType.first.name,
                    owner: User.all[6], address: Address.all[6], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c7.jpg')), filename: 'c7.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: PropertyType.first.name,
                    owner: User.all[7], address: Address.all[7], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c8.jpg')), filename: 'c8.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: PropertyType.first.name,
                    owner: User.all[8], address: Address.all[8], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c9.jpg')), filename: 'c9.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: PropertyType.first.name,
                    owner: User.all[9], address: Address.all[9], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c10.jpg')), filename: 'c10.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: PropertyType.first.name,
                    owner: User.all[10], address: Address.all[10], bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c11.jpg')), filename: 'c11.jpg' } }])
Property.create!([{ name: 'Loved place', description: 'Presenting opulent, resort-style living in a highly desired location, this astonishing residence is sure to take your breath away.', property_type: PropertyType.first.name,
                    owner: User.last, address: Address.last, bedroom_count: 2, bed_count: 2, bathroom_count: 2, availability: true, price: 50, property_image: { io: File.open(Rails.root.join('app/assets/images/c12.jpg')), filename: 'c12.jpg' } }])
