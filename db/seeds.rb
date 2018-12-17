# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "creating artists"
artists = Artist.create([{name: 'Travis Scott', bio: "It's lit!"}, {name: 'A$AP', bio: "just ferg"}, {name: 'Yaeji', bio: "crazy yaeji"}])
puts "all the stars are born"

puts "creating genres"
genres = Genre.create([{name: "Hip Hop"}, {name: "House"}, {name: "Classical"}])
puts "foundations are set"

puts "creating songs"
songs = Song.create([{name: "Sicko Mode", artist_id: 1, genre_id: 1}, {name: "Guap", artist_id: 3, genre_id: 2}])
puts "It all comes together"
