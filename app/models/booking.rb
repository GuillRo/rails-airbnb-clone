class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  # validates :status, presence: true
  # validates :date_begin, presence: true
  # validates :date_end, presence: true
  # validates :user_id, presence: true
  # validates :flat_id, presence: true
end
