class CreateFlatAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :flat_amenities do |t|
      t.references :flat, foreign_key: true
      t.references :amenitie, foreign_key: true

      t.timestamps
    end
  end
end
