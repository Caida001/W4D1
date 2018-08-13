class User < ApplicationRecord
  has_many :artworks,
    foreign_key: :artist_id,
    primary_key: :id,
    class_name: "Artwork"

  has_many :artwork_shares,
    foreign_key: :viewer_id,
    primary_key: :id,
    class_name: "ArtworkShare"

  has_many :shared_artworks,
    through: :artwork_shares,
    source: :artwork

  validates :username, presence: true, uniqueness: true
end