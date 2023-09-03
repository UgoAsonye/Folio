# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create([
  { username: "FuturePirateKing", email: "luffy@test.com", password: "password", profile_pic: "https://4.bp.blogspot.com/-TQywv8wLhlQ/U02NgkZLF1I/AAAAAAAAAOk/sGqgDKtbwTE/s1600/monkey_d-_luffy75675757.PNG" },
  { username: "SonGoku", email: "goku@test.com", password: "password", profile_pic: "http://4.bp.blogspot.com/_3sU0MnRawMI/TQxvISSwpOI/AAAAAAAACVI/ziB5H6pLLQM/s1600/Songoku%2B6.png" },
  { username: "RealJoeSchmoe", email: "joe@test.com", password: "password", profile_pic: "https://images.freeimages.com/images/large-previews/b29/normal-guy-1438830.jpg" },
])
