# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([
    { firstname: "Pepa", lastname: "Smith", email: "psmith@gmail.com", password: "p" },
    { firstname: "Thalia", lastname: "Worries", email: "tworries@gmail.com", password: "t" },
  ])

Post.create([
    { title: "Problems in BART", body: "I think there are problems in BART" },
    { title: "I love my cat", body: "I would die without my cat" }
  ])

Comment.create([
    { body: "I don't think there are any problems in BART" },
    { body: "I love my cat too, they are so adorable" }
  ])

User.first.comments << Comment.last
User.last.comments << Comment.first

Post.first.comments << Comment.first
Post.last.comments << Comment.last

User.first.posts << Post.first
User.last.posts << Post.last




