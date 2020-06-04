require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DanceLesson.destroy_all

lesson = DanceLesson.create!(name: "Lindy Hop", description: "The Lindy Hop is an American dance which was born in Harlem, New York City, in 1928 and has evolved since then with the jazz music of that time. It was very popular during the swing era of the late 1930s and early 1940s. ", level: "Beginner", address: "41 Ebrington Road, London", price: 300)
lesson.photo.attach(io: URI.open('https://live.staticflickr.com/5554/14810712952_32885f2765_b.jpg'), filename: 'lindy.jpg', content_type: 'image/jpg')

lesson2 = DanceLesson.create!(name: "Salsa", description: "Salsa is a Latin dance associated with the music genre of the same name which originated in the 1960s in New York City.Salsa is an amalgamation of Cuban dances that were popular in the ballrooms and nightclubs of Havana by the end of the 1950s as well as American jazz dances.", level: "Beginner",  address: "Rua Possidonio da Silva, Lisbon", price: 300)
lesson2.photo.attach(io: URI.open('https://waytogo.cebupacificair.com/wp-content/uploads/2018/07/salsa-pic-2.jpg'), filename: 'salsa.jpg', content_type: 'image/jpg')

lesson3 = DanceLesson.create!( name: "Bachata", description: "Bachata is a style of social dance from the Dominican Republic which is now danced all over the world. It is connected with bachata music.", level: "Intermediate", address: "38 Stanley Road, Oxford", price: 300)
lesson3.photo.attach(io:  URI.open('https://expressionplatform.com/wp-content/uploads/2019/07/bachata-daniel_desiree.jpg'), filename: 'salsa.jpg', content_type: 'image/jpg')

# DanceLesson.create!(name: "Brazilian Zouk", description: "Brazilian Zouk is a partner dance which began in Brazil during the early 1990s. Brazilian Zouk evolved from the partner dance known as the Lambada.", level: "Beginner")
# DanceLesson.create!(name: "Samba", description: "Samba is a Brazilian music genre and dance style, with its roots in Africa via the West African slave trade and African religious traditions, particularly of Congo, through the samba de roda genre of the northeastern Brazilian state of Bahia, from which it derived ", level: "Beginner")
# DanceLesson.create!(name: "Kizomba", description: "Kizomba is a genre of dance and a musical genre originating in Angola in 1984.", level: "Intermediate")
# DanceLesson.create!(name: "Forro", description: "The term forró refers to a musical genre, a rhythm, a dance and the event itself where forró music is played and danced. Forró is an important part of the Northeastern Region of Brazil. ", level: "Beginners")

puts "finished seeding"

# address: "Travessa do Oleiro, Lisbon, 1200-341 "
