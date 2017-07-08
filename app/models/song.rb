class Song < ApplicationRecord
  belongs_to :artist

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :year, length: { maximum: 4 }, allow_blank: true
  validates :rating, presence: true, length: { maximum: 2 }, allow_blank: true

end
