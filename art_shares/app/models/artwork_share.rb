class ArtworkShare < ApplicationRecord
  validates :artwork_id, presence: true, uniqueness: { scope: :viewer_id }
  validates :viewer_id, presence: true

  belongs_to :artwork,
    foreign_key: :artwork_id,
    primary_key: :id,
    class_name: "Artwork"

  belongs_to :viewer,
    foreign_key: :viewer_id,
    primary_key: :id,
    class_name: "User"
end
