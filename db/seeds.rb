# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user_one = User.create(
username: "bhom",
password: "123",
email: "bhom@gmail.com")

user_two = User.create(
username: "KenZ",
password: "111",
email: "kenza@gmail.com")

user_three = User.create(
username: "steff",
password: "222",
email: "steff@gmail.com")


post_one = Post.create(
title: "Fun and Free Concert!.",
content: "yayyy wooohoooo FREEE CONCCERT and GOOD FOOD there too! A MUST GO!",
user_id: user_one.id)

post_two = Post.create(
title: "Great Movie!",
content: "blah blah blah....Fifty Shades of Grey.....LOL WHAT?!",
user_id: user_two.id)

post_three = Post.create(
title: "Must see Broadway Show!",
content: "The Lion King broadway show was amazing!!! had a fun time and it changed my whole life!",
user_id: user_three.id)
