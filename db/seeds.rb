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
User.destroy_all

puts "creating"

User.create!({
  name: "Irina",
  email: "irina@gmail",
  password: "123456"
  })
User.create!({
  name: "Monica",
  email: "moni@gmail.com>",
  password: "123456"
  })


lesson = DanceLesson.create!(name: "Lindy Hop", description: "The Lindy Hop is an American dance which was born in Harlem, New York City, in 1928 and has evolved since then with the jazz music of that time. It was very popular during the swing era of the late 1930s and early 1940s. ", level: "Beginner", address: "Travessa do Oleiro, Lisbon", price: 300, user: User.all.sample)
lesson.photo.attach(io: URI.open('https://live.staticflickr.com/5554/14810712952_32885f2765_b.jpg'), filename: 'lindy.jpg', content_type: 'image/jpg')

lesson2 = DanceLesson.create!(name: "Salsa", description: "Salsa is a Latin dance associated with the music genre of the same name which originated in the 1960s in New York City.Salsa is an amalgamation of Cuban dances that were popular in the ballrooms and nightclubs of Havana by the end of the 1950s as well as American jazz dances.", level: "Beginner",  address: "Rua Possidonio da Silva, Lisbon", price: 300, user: User.all.sample)
lesson2.photo.attach(io: URI.open('https://waytogo.cebupacificair.com/wp-content/uploads/2018/07/salsa-pic-2.jpg'), filename: 'salsa.jpg', content_type: 'image/jpg')

lesson3 = DanceLesson.create!( name: "Bachata", description: "Bachata is a style of social dance from the Dominican Republic which is now danced all over the world. It is connected with bachata music.", level: "Intermediate", address: "Almirante Reis, Lisbon", price: 300, user: User.all.sample)
lesson3.photo.attach(io:  URI.open('https://expressionplatform.com/wp-content/uploads/2019/07/bachata-daniel_desiree.jpg'), filename: 'bachata.jpg', content_type: 'image/jpg')

lesson4 = DanceLesson.create!( name: "Zouk", description: "Brazilian Zouk is a partner dance which began in Brazil during the early 1990s. Brazilian Zouk evolved from the partner dance known as the Lambada.", level: "Beginner", address: "Avenida da Liberdades, Lisbon", price: 300, user: User.all.sample)
lesson4.photo.attach(io:  URI.open('https://i.pinimg.com/originals/0b/21/6b/0b216ba06101be2ecaad08c49b025b62.jpg'), filename: 'zouk.jpg', content_type: 'image/jpg')

lesson5 = DanceLesson.create!(name: "Forro", description: "The term forró refers to a musical genre, a rhythm, a dance and the event itself where forró music is played and danced. Forró is an important part of the Northeastern Region of Brazil. ", level: "Beginner" , address: "Anjos 70, Lisbon", price: 300, user: User.all.sample)
lesson5.photo.attach(io:  URI.open('https://forroistanbul.org/wp-content/uploads/2017/05/14138506_1057184401031631_997839514_n.jpg'), filename: 'forro.jpg', content_type: 'image/jpg')

lesson6 = DanceLesson.create!(name: "Samba", description: "Samba is a Brazilian music genre and dance style, with its roots in Africa via the West African slave trade and African religious traditions, particularly of Congo, through the samba de roda genre of the northeastern Brazilian state of Bahia, from which it derived ", level: "Intermediate", address: "Anjos 70, Lisbon", price: 300, user: User.all.sample)
lesson6.photo.attach(io:  URI.open('https://cf.ltkcdn.net/dance/images/orig/224774-2120x1414-samba-dancers-performing.jpg'), filename: 'samba.jpg', content_type: 'image/jpg')

puts "finished seeding"

