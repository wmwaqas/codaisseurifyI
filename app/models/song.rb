class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :album, presence: true
  validates :year, length: { maximum: 4 }, allow_blank: true
  validates :rating, length: { maximum: 2 }, allow_blank: true

end
