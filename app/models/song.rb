class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true
  validates :year, length: { maximum: 4 }
  validates :rating, presence: true, length: { maximum: 2 }

end
