class Place < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :photos, dependent: :destroy
  
  geocoded_by :address
  after_validation :geocode

  validates :name, :address, presence: true
  validates :description, presence: true, length: {minimum: 3}
end
