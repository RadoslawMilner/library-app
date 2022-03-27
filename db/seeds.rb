# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)

User.create!(first_name: "Radek", last_name: "Milner", email: "milner@library.com", password_digest: "12345", role: "admin", id: 1)

Book.create!(name: "Horus Rising", author: "Dan Abnett", release_date: "April 2006", book_id: 1, user_id: 1)
Book.create!(name: "False Gods", author: "Graham McNeill", release_date: "June 2006", book_id: 2, user_id: 1)
Book.create!(name: "Galaxy in Flames", author: "Ben Counter", release_date: "October 2006", book_id: 3, user_id: 1)
Book.create!(name: "The Flight of the Eisenstein", author: "James Swallow", release_date: "March 2007", book_id: 4, user_id: 1)
Book.create!(name: "Fulgrim", author: "Graham McNeill", release_date: "July 2007", book_id: 5, user_id: 1)
Book.create!(name: "The Colour of Magic", author: "Terry Pratchett", release_date: "1983", book_id: 6, user_id: 1)
Book.create!(name: "The Light Fantastic", author: "Terry Pratchett", release_date: "1986", book_id: 7, user_id: 1)
Book.create!(name: "Equal Rites", author: "Terry Pratchett", release_date: "1987", book_id: 8, user_id: 1)
Book.create!(name: "Mort", author: "Terry Pratchett", release_date: "1987", book_id: 9, user_id: 1)
Book.create!(name: "Sourcery", author: "Terry Pratchett", release_date: "1988", book_id: 10, user_id: 1)
Book.create!(name: "Wyrd Sisters", author: "Terry Pratchett", release_date: "1988", book_id: 11, user_id: 1)
Book.create!(name: "Piramids", author: "Terry Pratchett", release_date: "1989", book_id: 12, user_id: 1)
Book.create!(name: "Guards! Guards!", author: "Terry Pratchett", release_date: "1989", book_id: 13, user_id: 1)
Book.create!(name: "Eric", author: "Terry Pratchett", release_date: "1990", book_id: 14, user_id: 1)
Book.create!(name: "Moving Pictures", author: "Terry Pratchett", release_date: "1990", book_id: 15, user_id: 1)

p "Admin and #{Book.count} Books created. Let's roll!"
