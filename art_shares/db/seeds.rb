# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users.destroy

users = User.create([
  {username: 'bobby123'},
  {username: 'jenny5423'},
  {username: 'george922'},
  {username: 'john9493'}])

  artwork = Artwork.create([
    {title: "Day at the Park", image_url: "www.artwork.com/image/1", artist_id: users[0].id},
    {title: "The Lake", image_url: "www.artwork.com/image/2", artist_id: users[1].id},
    {title: "Rain", image_url: "www.artwork.com/image/3", artist_id: users[2].id},
    {title: "City", image_url: "www.artwork.com/image/4", artist_id: users[3].id}
    ])

shared_artworks = ArtworkShare.create([
  {artwork_id: artwork[0].id, viewer_id: users[1].id},
  {artwork_id: artwork[1].id, viewer_id: users[2].id},
  {artwork_id: artwork[2].id, viewer_id: users[3].id},
  {artwork_id: artwork[3].id, viewer_id: users[0].id}
  ])
