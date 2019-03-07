class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :status, presence: true
  validates :date_begin, presence: true
  validates :date_end, presence: true
  validates :user_id, presence: true
  validates :flat_id, presence: true
  validate :checkavailable

  private

  def checkavailable
    # self.errors.add(:date_begin, message: "Flat is already booked")
    # #logic
    # @all_bookings = Booking.where(flat_id: flat)
    # date_from = new_booking.date_begin
    # date_end = new_booking.date_end
    # @all_bookings.each do |booking|
    #       if (date_from..date_end).overlaps?(booking.date_begin..booking.date_end)
    #         self.errors.add(:date_begin, message: "Flat is already booked")
    #       end
    # end
  end
end
