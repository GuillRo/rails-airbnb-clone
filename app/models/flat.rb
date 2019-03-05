class Flat < ApplicationRecord
  has_many :reviews
  has_many :bookings
  has_many :flat_amenities
  has_many :amenities, through: :flat_amenities
  mount_uploader :photo, PhotoUploader
end
