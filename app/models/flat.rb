class Flat < ApplicationRecord
  has_many :reviews
  has_many :bookings
  has_many :flat_amenities
  has_many :amenities, through: :flat_amenities
  mount_uploader :photo, FlatPhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
