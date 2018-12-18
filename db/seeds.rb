# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name:"Iron Maiden", bio:"blah blah blah blah")
Artist.create(name:"Lady Gaga", bio:"blah blah blah blah")
Artist.create(name:"Bradely Cooper", bio:"blah blah blah blah")
Artist.create(name:"Dr. Dre", bio:"blah blah blah blah")

Genre.create(name: "rap")
Genre.create(name: "rock")
Genre.create(name: "country")
Genre.create(name: "pop")

Song.create(name: "Next Episode", artist_id: 4, genre_id: 1)
Song.create(name: "Trooper", artist_id: 1, genre_id: 2)
Song.create(name: "A Star is Born", artist_id: 3, genre_id: 3)
Song.create(name: "Poker Face", artist_id: 2, genre_id: 4)