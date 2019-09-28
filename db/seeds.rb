# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.create(name: 'Living Room')
Location.create(name: 'Office')
Location.create(name: 'Bedroom')

Device.create(location_id: 1)
Device.create(location_id: 2)
Device.create(location_id: 2)
Device.create(location_id: 3)

Reading.create(device_id: 1, temperature: 51)
Reading.create(device_id: 2, temperature: 52)
Reading.create(device_id: 1, temperature: 41)
Reading.create(device_id: 1, temperature: 51)
Reading.create(device_id: 2, temperature: 32)
Reading.create(device_id: 4, temperature: 44)
Reading.create(device_id: 4, temperature: 34)
Reading.create(device_id: 3, temperature: 63)
Reading.create(device_id: 1, temperature: 71)
