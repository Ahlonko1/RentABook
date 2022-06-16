# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Rent.destroy_all
User.destroy_all
Book.destroy_all

puts "Creating users..."
puts "Create user 1..."

user_1 = User.create!(first_name: "A", last_name: "K", email: "test@test.com", password: "azerty")
puts "User 1 created"
user_1.save!

puts "Creating authors..."
author_1 = Author.new(first_name: "JK", last_name:"Rowling")
author_1.save!

puts "Creating books..."
book = Book.new(title: "HARRY POTTER AND THE CHAMBER OF SECRETS", language: "English", author: author_1, synopsis: "Harry Potter's summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as though turned to stone ... Dobby's sinister predictions seem to be coming true.")
book.save!
