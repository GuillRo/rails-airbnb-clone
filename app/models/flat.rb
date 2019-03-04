class Flat < ApplicationRecord
  has_many :reviews
  has_many :bookings
  has_many :flat_amenities
end
