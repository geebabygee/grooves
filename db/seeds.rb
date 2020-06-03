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
Lesson.destroy_all
Lesson.create!(name: "Lindy Hop", description: "The Lindy Hop is an American dance which was born in Harlem, New York City, in 1928 and has evolved since then with the jazz music of that time. It was very popular during the swing era of the late 1930s and early 1940s. ", level: "Beginner")
Lesson.create!(name: "Bachata", description: "Bachata is a style of social dance from the Dominican Republic which is now danced all over the world. It is connected with bachata music.", level: "Intermediate")
Lesson.create!(name: "Salsa", description: "Salsa is a Latin dance associated with the music genre of the same name which originated in the 1960s in New York City.Salsa is an amalgamation of Cuban dances that were popular in the ballrooms and nightclubs of Havana by the end of the 1950s as well as American jazz dances.", level: "Beginner")
Lesson.create!(name: "Brazilian Zouk", description: "Brazilian Zouk is a partner dance which began in Brazil during the early 1990s. Brazilian Zouk evolved from the partner dance known as the Lambada.", level: "Beginner")
Lesson.create!(name: "Samba", description: "Samba is a Brazilian music genre and dance style, with its roots in Africa via the West African slave trade and African religious traditions, particularly of Congo, through the samba de roda genre of the northeastern Brazilian state of Bahia, from which it derived ", level: "Beginner")
Lesson.create!(name: "Kizomba", description: "Kizomba is a genre of dance and a musical genre originating in Angola in 1984.", level: "Intermediate")
Lesson.create!(name: "Forro", description: "The term forró refers to a musical genre, a rhythm, a dance and the event itself where forró music is played and danced. Forró is an important part of the Northeastern Region of Brazil. ", level: "Beginners")

puts "finished seeding"

