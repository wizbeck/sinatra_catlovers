#created some seed data for a new user to see and for development purposes.
Cat.destroy_all
User.destroy_all

puts "seeding database..."
User.create(username: "user_test", password: "test")
user = User.find_by(username: "user_test")
user.cats.create(name:"Momo", age: 10, personality: "food motivated",breed: 'Tabby', color: 'black', fur_type: 'shorthair')
user.cats.create(name:"Rogue", age: 1, personality: "friendly and playful")
user.cats.create(name:"Test cat", age: 34, personality: "none")
user.cats.create(name:"unknown", age: 4, personality: "scaredy cat")
user.cats.create(name:"Garfield", age: 25, personality: "selfish")

puts "There should now be 5 or more test cats and 5 breeds in the database with a test user"