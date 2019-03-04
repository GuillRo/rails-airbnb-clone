class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :nbr_rooms
      t.integer :nbr_beds
      t.date :date_begin
      t.date :date_end
      t.string :status
      t.references :user, foreign_key: true
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
