class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :address
      t.float :price

      t.timestamps
    end
  end
end
