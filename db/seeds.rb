# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

User.destroy_all
Pen.destroy_all

file = URI.open('https://avatars.githubusercontent.com/u/85875844?v=4')
user = User.new(email: 'sue@sue.com', password: "123456")
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://avatars.githubusercontent.com/u/68551131?v=4')
user = User.new(email: 'pablo@pablo.com', password: "123456")
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://avatars.githubusercontent.com/u/4697576?v=4')
user = User.new(email: 'and@and.com', password: "123456")
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user.save!

file = URI.open('https://images.unsplash.com/photo-1471107340929-a87cd0f5b5f3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=966&q=80')
pen = Pen.new(title: 'Fountain pen', description: "A great fountain pen and a noteboook", user_id: user.id)
pen.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

pen.save!
