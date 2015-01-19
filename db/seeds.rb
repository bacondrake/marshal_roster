# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Ntcmarshal.create!(name:  "John Smith",
#                    address: "99 Circle Lane Ballaroo VIC 3000",
#                    email: "john.smith@student.edu.au",
#                    phone: "0411987654"
#                    admin: true
#                    )
#
# 50.times do |n|
#   name  = Faker::Name.name
#   email = Faker::Internet.user_name(name.downcase, %w(.)) + "@student.edu.au"
#   address = Faker::Address.street_address + " " +  Faker::Address.city + " " + Faker::Address.state_abbr + " " + Faker::Address.postcode
#   phone = "04#{Faker::Number.number(8)}"
#
#   Ntcmarshal.create!(name:  name,
#   email:    email,
#   address:  password,
#   phone:    phone)
# end
users = User.create([
  { email: "admin@admin.com", password: "foobar", name: "Admin", phone: "0404192837", activated: true, admin: true },
  { email: "jenny_wenny@friendface.com", password: "theshoes", name: "Jen Barber", phone: "0472995726", activated: true },
  { email: "roy.trenneman@ri.com", password: "offandon", name: "Roy Trenneman", phone: "0411927645", activated: true },
  { email: "maurice.moss@ri.com", password: "hotear", name: "Maurice Moss", phone: "0412618922", activated: true },
  ])

ntcmarshals = Ntcmarshal.create([
  { name: "John Smith", email: "john.smith@student.edu.au", phone: "0426187209" },
  { name: "Jane Smath", email: "jane.smath@student.edu.au", phone: "0415622366" },
  { name: "Hubert Jass", email: "hugh.jass@student.edu.au", phone: "0416299748" },
  { name: "Peter Yeigh", email: "peter.yeigh@student.edu.au", phone: "0468256777" },
  { name: "Lee O'Leigh", email: "lee.oleigh@student.edu.au", phone: "0468256778" },
  { name: "Sarah Werah", email: "sarah.werah@student.edu.au", phone: "0468256779" },
  { name: "Joshua Kim", email: "joshua.kim@student.edu.au", phone: "0419365747" },
  { name: "Sally McFadden", email: "sally.mcfadden@student.edu.au", phone: "0423168743" },
  { name: "Tyrone Asorous", email: "tyrone.asorous@student.edu.au", phone: "0443279187" },
  { name: "Kelly Killer", email: "kelly.killer@student.edu.au" },
  { name: "Peter Blue", email: "blue.peter@student.edu.au" },
  { name: "Dawn Red", email: "red.dawn@student.edu.au" },
  { name: "Miles Green", email: "green.miles@student.edu.au" },
  { name: "Paul Purple", email: "purple.paul@student.edu.au" },
  { name: "Jenny Richards", email: "richards.jenny@student.edu.au" },
  { name: "Shauna Shieppe" },
  { name: "Harry Dickson-Baules" },
  { name: "Agatha Olmeid" },
  { name: "Sal Enbai" },
  { name: "Porter Hikari" },
  { name: "Caroline Watt" },
  { name: "Steve Fennel" },
  { name: "Sasha Greip" },
  { name: "Tyrell Strie" },
  { name: "Brad Eimir" },
  { name: "Phteven Rogerph" },
  { name: "Angel Tri" },
  { name: "Sei-mi Yang" },
  { name: "Artburgh Schleighlier" },
  { name: "Phillip Sister" },
  { name: "Mister Sorii" },
  { name: "Darius Darnellius" },
  { name: "Motherfather Jones" },
  { name: "Joan Ocean" },
  { name: "Wei O'Kong" },
  { name: "Xina Woumeid" },
  { name: "La-a Didah" },
  { name: "Song-yi Cheong" },
  { name: "Takeshi Kasu" }
])

exams = Exam.create ([
  { date: Date.strptime("2015/03/29", "%Y/%m/%d") },
  { date: Date.strptime("2015/04/03", "%Y/%m/%d") },
  { date: Date.strptime("2015/04/04", "%Y/%m/%d") },
  { date: Date.strptime("2015/04/05", "%Y/%m/%d") },
  { date: Date.strptime("2015/05/03", "%Y/%m/%d") },
  { date: Date.strptime("2015/05/15", "%Y/%m/%d") },
  { date: Date.strptime("2015/05/16", "%Y/%m/%d") },
  { date: Date.strptime("2015/05/28", "%Y/%m/%d") },
  { date: Date.strptime("2015/05/29", "%Y/%m/%d") },
  { date: Date.strptime("2015/05/30", "%Y/%m/%d") },
  { date: Date.strptime("2015/06/12", "%Y/%m/%d") },
  { date: Date.strptime("2015/06/13", "%Y/%m/%d") },
  { date: Date.strptime("2015/06/14", "%Y/%m/%d") },
  { date: Date.strptime("2015/06/18", "%Y/%m/%d") },
  { date: Date.strptime("2015/06/19", "%Y/%m/%d") },
  { date: Date.strptime("2015/06/20", "%Y/%m/%d") },
  { date: Date.strptime("2015/06/26", "%Y/%m/%d") },
  { date: Date.strptime("2015/06/27", "%Y/%m/%d") },
  { date: Date.strptime("2015/06/28", "%Y/%m/%d") },
  { date: Date.strptime("2015/07/11", "%Y/%m/%d") },
  { date: Date.strptime("2015/07/17", "%Y/%m/%d") },
  { date: Date.strptime("2015/07/18", "%Y/%m/%d") },
  { date: Date.strptime("2015/07/25", "%Y/%m/%d") },
  { date: Date.strptime("2015/07/26", "%Y/%m/%d") },
  { date: Date.strptime("2015/08/07", "%Y/%m/%d") },
  { date: Date.strptime("2015/08/08", "%Y/%m/%d") },
  { date: Date.strptime("2015/08/14", "%Y/%m/%d") },
  { date: Date.strptime("2015/08/15", "%Y/%m/%d") },
  { date: Date.strptime("2015/09/04", "%Y/%m/%d") },
  { date: Date.strptime("2015/09/05", "%Y/%m/%d") },
  { date: Date.strptime("2015/09/06", "%Y/%m/%d") },
  { date: Date.strptime("2015/09/11", "%Y/%m/%d") },
  { date: Date.strptime("2015/09/12", "%Y/%m/%d") },
  { date: Date.strptime("2015/09/13", "%Y/%m/%d") },
  { date: Date.strptime("2015/09/23", "%Y/%m/%d") },
  { date: Date.strptime("2015/09/24", "%Y/%m/%d") },
  { date: Date.strptime("2015/10/09", "%Y/%m/%d"), name: "Clinical exam" },
  { date: Date.strptime("2015/10/17", "%Y/%m/%d") },
  { date: Date.strptime("2015/10/22", "%Y/%m/%d") },
  { date: Date.strptime("2015/10/23", "%Y/%m/%d") },
  { date: Date.strptime("2015/10/24", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/06", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/07", "%Y/%m/%d"), name: "Retest exam" },
  { date: Date.strptime("2015/11/12", "%Y/%m/%d"), name: "College of General Medicine exam" },
  { date: Date.strptime("2015/11/13", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/14", "%Y/%m/%d"), name: "Clinical exam" },
  { date: Date.strptime("2015/11/18", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/19", "%Y/%m/%d"), name: "OSCE trial examination" },
  { date: Date.strptime("2015/11/20", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/27", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/28", "%Y/%m/%d") }
])
