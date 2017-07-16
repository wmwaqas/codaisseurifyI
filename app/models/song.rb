class Song < ApplicationRecord
  belongs_to :artist, optional: true

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :album, presence: true
  validates :year, presence: true
  validates :rating, presence: true

end
