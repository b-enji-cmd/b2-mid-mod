# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
mech_1 = Mechanic.create(name: 'A', experience: 12)
mech_2 = Mechanic.create(name: 'B', experience: 13)
mech_3 = Mechanic.create(name: 'C', experience: 14)
mech_4 = Mechanic.create(name: 'D', experience: 15)

ride_1 = Ride.create(name: 'Mind Eraser', thrills: 211, is_open: true)
ride_2 = Ride.create(name: 'Space Mountain', thrills: 413, is_open: true)
ride_3 = Ride.create(name: 'Scrambler', thrills: 115, is_open: true)
ride_4 = Ride.create(name: 'Twister', thrills: 610, is_open: true)

mech_1.rides << ride_1
mech_2.rides << ride_2
mech_3.rides << ride_3
mech_3.rides << ride_4
