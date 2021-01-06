#created some seed data for a new user to see and for development purposes.
Cat.destroy_all

puts "seeding database..."
user_test = User.create(username: "user_test", password: "test")
user_test.cats.build(name:"Momo", age: 10, personality: "food motivated")
user_test.cats.build(name:"Rogue", age: 1, personality: "friendly and playful")
user_test.cats.build(name:"Test cat", age: 34, personality: "none")
user_test.cats.build(name:"unknown", age: 4, personality: "scaredy cat")
user_test.cats.build(name:"Garfield", age: 25, personality: "selfish")

puts "There should now be 5 or more test cats in the database with a test user"