# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Todo.destroy_all
User.destroy_all

chris = User.create(username: "chris123", password: "chris123")

Todo.create(title: "First Todo", content: "This is my first todo item", urgent: false, done: false, user: chris)
Todo.create(title: "Second Todo", content: "This is my second todo item", urgent: false, done: false, user: chris)
Todo.create(title: "Third Todo", content: "This is my third todo item", urgent: true, done: false, user: chris)