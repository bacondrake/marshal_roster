# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ntcmarshals = Ntcmarshal.create([
  { name: "John Smith" },
  { name: "Jane Smath" },
  { name: "Hubert Jass" },
  { name: "Peter Yeigh" },
  { name: "Lee O'Leigh" },
  { name: "Sarah Werah" },
  { name: "Joshua Kim" },
  { name: "Sally McFadden" },
  { name: "Tyrone Asorous" },
  { name: "Kelly Killer" },
  { name: "Peter Blue" },
  { name: "Dawn Red" },
  { name: "Miles Green" },
  { name: "Paul Purple" },
  { name: "Jenny Richards" },
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
  { date: Date.strptime("2015/10/09", "%Y/%m/%d") },
  { date: Date.strptime("2015/10/17", "%Y/%m/%d") },
  { date: Date.strptime("2015/10/22", "%Y/%m/%d") },
  { date: Date.strptime("2015/10/23", "%Y/%m/%d") },
  { date: Date.strptime("2015/10/24", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/06", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/07", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/12", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/13", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/14", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/18", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/19", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/20", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/27", "%Y/%m/%d") },
  { date: Date.strptime("2015/11/28", "%Y/%m/%d") }
])