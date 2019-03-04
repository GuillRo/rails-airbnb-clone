class SwitchColumnsBookingsToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :nbr_rooms, :integer
    add_column :flats, :nbr_beds, :integer
    remove_column :bookings, :nbr_rooms
    remove_column :bookings, :nbr_beds
  end
end
