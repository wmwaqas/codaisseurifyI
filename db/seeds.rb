Song.destroy_all
Artist.destroy_all

# Artists
artist_1 = Artist.create!(name: "Ellie Goulding")
artist_2 = Artist.create!(name: "Avril Lavigne")

# Songs
song_1 = Song.create!(
name:"Love Me Like You Do",
album: "Fifty Shades of Grey",
year: 2015,
rating: 9,
artist: artist_1)

song_2 = Song.create!(
name:"Burn",
album: "Halcyon",
year: 2012,
rating: 8,
artist: artist_1)

song_3 = Song.create!(
name:"On My Mind",
album: "Delirium",
year: 2015,
rating: 7,
artist: artist_1)

song_4 = Song.create!(
name:"Give You What You Like",
album: "Babysitter's Black Book",
year: 2013,
rating: 9,
artist: artist_2)

song_5 = Song.create!(
name:"Fall to Pieces",
album: "Under My Skin",
year: 2004,
rating: 8,
artist: artist_2)

song_6 = Song.create!(
name:"Keep Holding On",
album: "The Best Damn Thing",
year: 2007,
rating: 7,
artist: artist_2)

# Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waqas/image/upload/v1499537959/ellie-goulding_lu9l8f.jpg", artist: artist_1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waqas/image/upload/v1499537952/avril-lavigne_vnjfnb.jpg", artist: artist_2)






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
