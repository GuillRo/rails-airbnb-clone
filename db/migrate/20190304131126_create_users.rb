class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :las_name
      t.string :adress
      t.string :email

      t.timestamps
    end
  end
end
