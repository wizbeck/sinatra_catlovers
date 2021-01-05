#created some seed data for a new user to see and for development purposes.
Cat.destroy_all

puts "seeding database..."

Cat.create(name:"Momo", age: 10, personality: "food motivated")
Cat.create(name:"Rogue", age: 1, personality: "friendly and playful")
Cat.create(name:"Test cat", age: 34, personality: "none")
Cat.create(name:"unknown", age: 4, personality: "scaredy cat")
Cat.create(name:"Garfield", age: 25, personality: "selfish")

puts "There should be 5 or more cats in the database now"