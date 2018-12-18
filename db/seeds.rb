# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "creating new Artists"
Artist.destroy_all
a1 = Artist.create(name: "Fidlar", bio: "words words words")
a2 = Artist.create(name: "Raidohead", bio: "words words words")
a3 = Artist.create(name: "Weezer", bio: "words words words")
a4 = Artist.create(name: "Sum 41", bio: "words words words")
a5 = Artist.create(name: "50 cent", bio: "words words words")

puts "Bye bye Genres"
Genre.destroy_all
puts "creating new Geners"
g1 = Genre.create(name: "Rock")
g2 = Genre.create(name: "Classic")
g3 = Genre.create(name: "Rap")

puts "bye bye Songs"
Song.destroy_all
puts "creating new Songs"
s1 = Song.create(name: "West Coast", artist_id: a1.id, genre_id: g1.id)
s2 = Song.create(name: "Creep", artist_id: a2.id, genre_id: g1.id)
s3 = Song.create(name: "El Scorcho", artist_id: a3.id, genre_id: g1.id)
s3 = Song.create(name: "Fat Lip", artist_id: a4.id, genre_id: g1.id)
s3 = Song.create(name: "Say it Ain't So", artist_id: a3.id, genre_id: g1.id)
s3 = Song.create(name: "Many Men", artist_id: a5.id, genre_id: g3.id)
puts "All Done!"
