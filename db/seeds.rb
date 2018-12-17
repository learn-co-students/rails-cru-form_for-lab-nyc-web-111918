# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "creating artist"
Artist.create(name: "Ariana Grande", bio: "thank u next")
Artist.create(name: "Rihanna", bio: "doesn't need a bio")
Artist.create(name: "Justin Bieber", bio: "no bio")
Artist.create(name: "John Legend", bio: "christmas album")
Artist.create(name: "Miley Cyrus", bio: "promo")
puts "done creating artist"

puts "creating genre"
Genre.create(name: "Pop")
Genre.create(name: "R&B")
Genre.create(name: "Soul")
Genre.create(name: "Rock & Roll")
Genre.create(name: "EDM")
puts "done creating genres"

puts "creating songs"
Song.create(name: "imagine", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "thank u next", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "all of me", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "sorry", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "party in the usa", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
Song.create(name: "four five seconds", artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
puts "end of creating songs"
