require 'open-uri'

puts "step1 - Cleaning the database"

Car.destroy_all
User.destroy_all

puts "Creating User.."

user1 = User.create!(email: "chris@gmail.com", password: "123456")

puts "Creating Cars.."

car_1_picture = URI.open('https://images.unsplash.com/photo-1522813592722-0650544ffe03?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
car_1 = Car.new(brand: "BMW", car_type: "3.18i", year: 1998, description: "In goede staat verkerende bmw 3.18i. Onderhoudsboekjes aanwezig", price: 2500.00)
car_1.photo.attach(io: car_1_picture, filename: 'car_1.png', content_type: 'image/png')
car_1.save!