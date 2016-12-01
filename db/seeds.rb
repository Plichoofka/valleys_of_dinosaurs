# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dino1 = Dinosaur.create( { name: "Iguanodon", age: 3, image_url: "https://goo.gl/wB6q9q" } )
dino2 = Dinosaur.create( { name: "Mosasaurus", age: 10, image_url: "https://goo.gl/aoZsYt" } )
dino3 = Dinosaur.create( { name: "Hungarosaurus", age: 15, image_url: "https://goo.gl/EqRlgP" } )
dino4 =  Dinosaur.create( { name: "Random1", age: rand(1..100), image_url:  } )
dino5 =  Dinosaur.create( { name: "Random2", age: rand(1..100), image_url:  } )
