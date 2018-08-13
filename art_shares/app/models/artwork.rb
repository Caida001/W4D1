class Artwork < ApplicationRecord
  belongs_to :artist,
    foreign_key: :artist_id,
    primary_key: :id,
    class_name: "User"

  has_many :artwork_shares,
    foreign_key: :artwork_id,
    primary_key: :id,
    class_name: "ArtworkShare"

  has_many :shared_viewers,
    through: :artwork_shares,
    source: :viewer

  validates :title, presence: true, uniqueness: { scope: :artist_id }
  validates :image_url, presence: true
  validates :artist_id, presence: true
end
