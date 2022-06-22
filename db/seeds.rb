# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require "open-uri"

Rent.destroy_all
User.destroy_all
Book.destroy_all


puts "Create user 1..."

user_1 = User.create!(first_name: "A", last_name: "K", email: "test@test.com", password: "azerty")
puts "User 1 created"
user_1.save!

user_2 = User.create!(first_name: "G", last_name: "H", email: "test@test.fr", password: "azerty")
puts "User 1 created"
user_2.save!

puts "Create author. 1.."
author_1 = Author.new(first_name: "JK", last_name:"Rowling")
puts "Author 1 created"
author_1.save!

puts "Create book 1..."
book = Book.new(title: "HARRY POTTER AND THE CHAMBER OF SECRETS", language: "English", author: author_1, user_id: 2, synopsis: "Harry Potter's summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as though turned to stone ... Dobby's sinister predictions seem to be coming true.")
book.photos.attach([
  {
    io: File.open('public/images/HP_chamber_of_secrets.jpg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/HP_chamber_of_secrets2.jpg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  },
  {
    io: File.open('public/images/HP_chamber_of_secrets3.jpg'),
    filename: 'anyname.jpg',
    content_type: 'image/jpg'
  }
])
puts "Book 1 created"
book.save!
