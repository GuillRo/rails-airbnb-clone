class AddDescriptionModelFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :description, :string
  end
end
