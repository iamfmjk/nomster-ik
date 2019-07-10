class Place < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_many :photos
  
  geocoded_by :address
  after_validation :geocode

  validates :name, :address, presence: true
  validates :description, presence: true, length: {minimum: 3}
end
