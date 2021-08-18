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
user.photo.attach(io: file, filename: 'sue', content_type: 'image/png')

user.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629282065/pen01_f6922x.jpg')
pen = Pen.new(title: 'Fountain pen', description: "A great fountain pen and a noteboook", user_id: user.id)
pen.photo.attach(io: file, filename: 'pen01', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629282066/pen03_o9plms.jpg')
pen = Pen.new(title: 'Fountain pen', description: "A great fountain pen and a noteboook", user_id: user.id)
pen.photo.attach(io: file, filename: 'pen02', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629282065/pen02_og66bi.jpg')
pen = Pen.new(title: 'Fountain pen', description: "A great fountain pen and a noteboook", user_id: user.id)
pen.photo.attach(io: file, filename: 'pen01', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629282065/pen04_dds87j.jpg')
pen = Pen.new(title: 'Fountain pen', description: "A great fountain pen and a noteboook", user_id: user.id)
pen.photo.attach(io: file, filename: 'pen01', content_type: 'image/jpg')

pen.save!

file = URI.open('https://res.cloudinary.com/dbflo5abx/image/upload/v1629282065/pen05_knf8sq.jpg')
pen = Pen.new(title: 'Fountain pen', description: "A great fountain pen and a noteboook", user_id: user.id)
pen.photo.attach(io: file, filename: 'pen01', content_type: 'image/jpg')

pen.save!
