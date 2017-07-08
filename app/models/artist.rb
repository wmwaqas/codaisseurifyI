class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true

  scope :order_by_name, -> { order(:name) }
end
