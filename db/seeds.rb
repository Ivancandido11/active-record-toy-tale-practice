# This will delete any existing rows from the Toy and Kid tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting toy/kid data..."
Toy.destroy_all
Kid.destroy_all

puts "Creating toys..."
woody = Toy.create(name: "Woody", price: 10)
buzz = Toy.create(name: "Buzz Lightyear", price: 100)
bopeep = Toy.create(name: "Bo-Peep", price: 20)
slinky = Toy.create(name: "Slinky", price: 30)
rex = Toy.create(name: "Rex", price: 25)
potato = Toy.create(name: "Mr. Potato Head", price: 5)

puts "Creating kids..."
andy = Kid.create(name: "Andy")
sid = Kid.create(name: "Sid")

puts "Creating purchases..."
Purchase.create(toy: woody, kid: andy, quantity: 2)
Purchase.create(toy: buzz, kid: andy, quantity: 1)
Purchase.create(toy: bopeep, kid: andy, quantity: 10)
Purchase.create(toy: woody, kid: sid, quantity: 1)
Purchase.create(toy: potato, kid: sid, quantity: 6)
Purchase.create(toy: rex, kid: sid, quantity: 5)
Purchase.create(toy: slinky, kid: sid, quantity: 7)

puts "Seeding done!"