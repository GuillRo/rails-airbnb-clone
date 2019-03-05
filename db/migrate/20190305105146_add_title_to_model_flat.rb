class AddTitleToModelFlat < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :title, :string
  end
end
